import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:curl_http/curl.dart';
import 'package:ffi/ffi.dart';
import 'package:http/http.dart';

final _kFoldedHeaderPrefixRegExp = RegExp(r"[ \t]");

class CurlClient extends BaseClient {
  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final requestBytes = await request.finalize().toBytes();
    // final requestBytes = utf8.encoder.convert("string");
    var requestBytesOffset = 0;

    //CURLOPT_FORBID_REUSE
    final easy = CurlEasy();
    final responseBytesBuilder = BytesBuilder();
    final responseHeaders = <String, String>{};
    String? latestReceivedHeader;

    try {
      easy
        ..options.url = request.url.toString()
        ..options.upload = true
        ..options.inFileSize = requestBytes.length
        ..options.customRequest = request.method
        ..options.followLocation = request.followRedirects
        ..options.maxRedirects = request.maxRedirects
        ..options.httpHeader = request.headers
        ..options.readFunction = typedViewIoCallback((bytesView) {
          print("bytesView.length ${bytesView.length}");
          try {
            final sublist = requestBytes.sublist(
              requestBytesOffset,
              min(requestBytes.length, requestBytesOffset + bytesView.lengthInBytes),
            );
            bytesView.setAll(0, sublist);
            requestBytesOffset += sublist.length;
            print("readFunction ${sublist.length}");
            return CurlReadFuncResult.bytesRead(sublist.length);
          } catch (e) {
            print(e);
            return const CurlReadFuncResult.abort();
          }
        })
        ..options.seekFunction = (offset, origin) {
          print("seekFunction $offset, $origin");
          return CurlSeekFuncResult.ok;
        }
        ..options.writeFunction = typedViewIoCallback((bytesView) {
          responseBytesBuilder.add(bytesView);
          return CurlWriteFuncResult.bytesWritten(bytesView.length);
        })
        ..options.headerFunction = (buffer, size, nmemb) {
          final length = size * nmemb;
          final headerLine = buffer.cast<Utf8>().toDartString(length: length - 2);

          var colonIndex = -1;
          if (headerLine.isEmpty) {
            // end of headers, do nothing
          } else if ((colonIndex = headerLine.indexOf(":")) > -1) {
            final name = headerLine.substring(0, colonIndex).trim();
            final value = headerLine.substring(colonIndex + 1).trim();
            latestReceivedHeader = name;

            if (responseHeaders.containsKey(name)) {
              responseHeaders[name] = "${responseHeaders[name]}; $value";
            } else {
              responseHeaders[name] = value;
            }
          } else if (headerLine.startsWith(_kFoldedHeaderPrefixRegExp)) {
            // folded header
            if (latestReceivedHeader != null) {
              responseHeaders[latestReceivedHeader!] = "${responseHeaders[latestReceivedHeader!]}$headerLine";
            }
          } else {
            // this is an HTTP status line
            responseHeaders.clear();
          }

          return length;
        };

      easy.perform();

      return StreamedResponse(
        Stream.value(responseBytesBuilder.takeBytes()),
        easy.info.responseCode,
        contentLength: easy.info.contentLengthDownload,
        request: request,
        headers: responseHeaders,
        isRedirect: easy.info.redirectCount > 0,
      );
    } finally {
      easy.close();
      responseBytesBuilder.clear();
    }
  }
}
