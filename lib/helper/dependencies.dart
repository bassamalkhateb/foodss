import 'package:food/Pages/data/Api/api_client.dart';
import 'package:food/Pages/data/repository/popular_product_repo.dart';
import 'package:food/controllers/popular_prodcut_controller.dart';
import 'package:food/utiles/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
Future<void>init()async{
   Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
   Get.lazyPut(() =>  PopularProductRepo(apiClient: Get.find()) );
   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}