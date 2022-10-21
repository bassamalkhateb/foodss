import 'package:food/Pages/data/Api/api_client.dart';
import 'package:food/utiles/app_constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<http.Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_URL);
  }
}
