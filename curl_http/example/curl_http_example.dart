import 'package:curl_http/curl_http.dart';

void main() async {
  final client = CurlClient();
  final response = await client.get(Uri.parse("https://google.com"));
  print(response.body);
  print(response.headers);
  print(response.isRedirect);
}
