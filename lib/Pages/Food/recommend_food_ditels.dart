import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Widgets/App_Icon.dart';
import 'package:food/Widgets/Big_text.dart';
import 'package:food/utiles/colors.dart';
import 'package:food/utiles/dimensioms.dart';

import '../../Widgets/exandbal_text.dart';

class RecommendFoodditals extends StatelessWidget {
  const RecommendFoodditals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: " Syrian Foods",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            backgroundColor: AppColors.yellowColor,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/food2.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExandbaleText(
                    text:
                        'There are so many ways to describe food, including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.There are so many ways to describe food, including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.There are so many ways to describe food, including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.including taste, texture, preparation style, and more. Whether you’re looking to spice up your food related vocabulary or you’re simply looking for the right words to describe food you’ve eaten or prepared recently, there are plenty of options to consider. Learning new ways to describe food can help you find the perfect culinary terms.',
                  ),
                  margin: EdgeInsets.only(
                      right: Dimensions.Width20, left: Dimensions.Width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                right: Dimensions.Width20 * 2.5,
                left: Dimensions.Width20 * 2.5,
                top: Dimensions.Height10,
                bottom: Dimensions.Height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.icon15,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: '\$12.88 '+' x '+' 0 ',color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                    iconSize: Dimensions.icon15,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child:Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
