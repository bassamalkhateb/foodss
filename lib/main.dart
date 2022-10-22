import 'package:flutter/material.dart';
import 'package:food/controllers/popular_prodcut_controller.dart';
import 'package:get/get.dart';

import 'Pages/home/home_bage_food.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Food',
      home: HomeBageFood(),
      debugShowCheckedModeBanner: false,
    );
  }
}
