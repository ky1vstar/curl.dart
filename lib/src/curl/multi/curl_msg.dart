// ignore_for_file: constant_identifier_names

import 'package:curl_http/curl.dart';
import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_msg.freezed.dart';

@freezed
class CurlMsg with _$CurlMsg {
  const CurlMsg._();

  /// CURLMSG_NONE or CURLMSG_LAST
  const factory CurlMsg.inProgress(CurlEasy easyHandle) = CurlInProgressMsg;

  /// CURLMSG_DONE
  const factory CurlMsg.done(CurlEasy easyHandle, CurlEasyCode result) = CurlDoneMsg;

  CurlEasyCode? get result => map(inProgress: (_) => null, done: (done) => done.result);
}

class CurlMsg2 {
  const CurlMsg2({required this.msg, required this.easyHandle});

  final CurlMsgType msg;
  final CurlEasy easyHandle;
}

enum CurlMsgType {
  NONE(CURLMSG.CURLMSG_NONE),
  DONE(CURLMSG.CURLMSG_DONE),
  LAST(CURLMSG.CURLMSG_LAST),
  ;

  const CurlMsgType(this.rawValue);

  factory CurlMsgType.fromRawValue(int rawValue) {
    return CurlMsgType.values.firstWhere(
      (e) => e.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue is given for $CurlMsgType");
        return CurlMsgType.NONE;
      },
    );
  }

  final int rawValue;
}
