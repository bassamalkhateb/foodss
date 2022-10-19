import 'package:flutter/material.dart';
import 'package:food/Widgets/App_Icon.dart';
import 'package:food/Widgets/App_column.dart';

import '../../Widgets/Big_text.dart';
import '../../Widgets/exandbal_text.dart';
import '../../Widgets/icon_text_widget.dart';
import '../../Widgets/small_text.dart';
import '../../utiles/colors.dart';
import '../../utiles/dimensioms.dart';

class PopularFoodDitels extends StatelessWidget {
  const PopularFoodDitels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/food1.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.Height45,
            left: Dimensions.Width20,
            right: Dimensions.Width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.Width20,
                  right: Dimensions.Width20,
                  top: Dimensions.Height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumns(
                    text: "foods Syrian",
                  ),
                  SizedBox(
                    height: Dimensions.Height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.Height20,),
                  Expanded(child: SingleChildScrollView(child: ExandbaleText(text: 'There are so many ways to describe food, including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.',))),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHieghtBar,
        padding: EdgeInsets.only(
            top: Dimensions.Height30,
            bottom: Dimensions.Height30,
            left: Dimensions.Width20,
            right: Dimensions.Width20),
        decoration: BoxDecoration(
            color: AppColors.bottonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.Height20,
                  bottom: Dimensions.Height20,
                  left: Dimensions.Width20,
                  right: Dimensions.Width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.singColor,
                  ),
                  SizedBox(
                    width: Dimensions.Width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.Width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.singColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.Height20,
                  bottom: Dimensions.Height20,
                  left: Dimensions.Width20,
                  right: Dimensions.Width20),
              child: BigText(
                text: '\$10 | Add to Card',
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
