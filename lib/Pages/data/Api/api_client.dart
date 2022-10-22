import 'package:food/utiles/app_constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Countent-type': 'application/json; charset = UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<http.Response> getData(
    String uri,
  ) async {
    try {
      print(appBaseUrl + uri);
      var url = Uri.http('mvs.bslmeiyu.com', '/api/v1/products/popular');
      print(url.toString());
      http.Response response = await http.get(url);
      print(response.body);
      return response;
    } catch (e) {
      return http.Response(e.toString(), 400);
    }
  }
}
