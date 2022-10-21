import 'package:flutter/material.dart';
import 'package:food/Widgets/Big_text.dart';
import 'package:food/Widgets/small_text.dart';
import 'package:food/utiles/colors.dart';
import 'package:food/utiles/dimensioms.dart';

import 'food_page_body.dart';

class HomeBageFood extends StatefulWidget {
  const HomeBageFood({Key? key}) : super(key: key);

  @override
  State<HomeBageFood> createState() => _HomeBageFoodState();
}

class _HomeBageFoodState extends State<HomeBageFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.Height45, bottom: Dimensions.Height15),
              padding: EdgeInsets.only(
                  right: Dimensions.Width20, left: Dimensions.Width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'Syria',
                        color: AppColors.mainColor,
                        size: 20,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Homs',
                            size: 12,
                          ),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: Dimensions.Width45,
                    height: Dimensions.Height45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                      size: Dimensions.icon15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ],
      ),
    );
  }
}
