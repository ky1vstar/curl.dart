import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:curl_http/curl.dart';
import 'package:curl_http/src/curl_client.dart';

void main2() async {
  final controller = StreamController<Uint8List>();
  controller.stream.cast<List<int>>().pipe(stdout);

  final easy = CurlEasy();
  easy.options.url = "https://google.com";
  // easy.options.startNewCookieSession();
  easy.options.cookieJar = "cookies";
  easy.options.followLocation = true;
  easy.options.readFunction = (ptr, size, nmemb) {
    print("readFunction");
    return const CurlReadFuncResult.bytesRead(0);
  };
  easy.options.writeFunction = (ptr, size, nmemb) {
    print("\n\nonWrite\n\n");
    final length = size * nmemb;
    final data = ptr.cast<Uint8>().asTypedList(length);
    final output = Uint8List(length);
    output.setAll(0, data);
    controller.add(output);
    return CurlWriteFuncResult.bytesWritten(size * nmemb);
  };
  easy.options.headerFunction = typedViewIoCallback((bytesView) {
    print("Header -> ${utf8.decode(bytesView)}");
    return bytesView.length;
  });

  final multi = CurlMulti();
  multi.addHandle(easy);

  var numberOfRunningHandles = 0;
  do {
    numberOfRunningHandles = multi.perform();
    if (numberOfRunningHandles > 0) {
      print(await Future.value(multi.poll(const Duration(seconds: 0))));
      print(multi.infoRead());
    }
  } while (numberOfRunningHandles > 0);
  print(multi.infoRead());
  print(easy.info.effectiveMethod);
  print(easy.info.effectiveUrl);
  print(easy.info.responseCode);
  print(easy.info.totalTime);
  print(easy.info.sslEngines);
  print(easy.info.cookieList);
}

void main() async {
  print(Curl.version);
  print(Curl.versionInfo);
  print(Curl.availableSslBackends);
  // Curl.sslBackendId = CurlSslBackendId.SECURETRANSPORT;
  Curl.sslBackendName = "OpenSSL";

  final client = CurlClient();
  final response = await client.get(Uri.parse("https://google.com"));
  print(response.body);
  print(response.headers);
  print(response.isRedirect);
}
