import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Widgets/small_text.dart';

import '../utiles/colors.dart';
import '../utiles/dimensioms.dart';
import 'Big_text.dart';
import 'icon_text_widget.dart';

class AppColumns extends StatelessWidget {
  final String text ;
  const AppColumns({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size:Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.Height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            SizedBox(
              width: Dimensions.Width10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.Width10,
            ),
            SmallText(text: '1122'),
            SizedBox(
              width: 5,
            ),
            SmallText(text: 'Comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.Height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            SizedBox(
              width: 10,
            ),
            IconAndText(
              icon: Icons.location_on,
              text: '1.7 KM',
              iconColor: AppColors.mainColor,
            ),
            SizedBox(
              width: 10,
            ),
            IconAndText(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
