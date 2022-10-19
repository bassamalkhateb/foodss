import 'package:flutter/material.dart';
import 'package:food/Widgets/small_text.dart';
import 'package:food/utiles/dimensioms.dart';

class IconAndText extends StatelessWidget {
  final IconData  icon ;
  final String text ;

  final Color iconColor ;

   IconAndText({Key? key,
     required this.icon,
     required this.text,

     required this.iconColor
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.icon15,),
        SizedBox(width: 5,),
        SmallText(text: text, )
      ],

    );
  }
}
