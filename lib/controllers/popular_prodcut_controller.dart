import 'dart:convert';

import 'package:food/Moudel/product_model.dart';
import 'package:food/Pages/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    http.Response response = await popularProductRepo.getPopularProductList();

    print(response.body);
    if (response.statusCode == 200) {
      print('bbbbbbbbbbbbbbbbbbbbbbbbbbb>>');
      _popularProductList = [];
      _popularProductList
          .addAll(Product.fromJson(jsonDecode(response.body)).products);
      print(_popularProductList);
      update();
    } else {}
  }
}
