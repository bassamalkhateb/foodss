import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Widgets/small_text.dart';
import 'package:food/utiles/colors.dart';
import 'package:food/utiles/dimensioms.dart';

class ExandbaleText extends StatefulWidget {
  final String text ;
  const ExandbaleText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExandbaleText> createState() => _ExandbaleTextState();
}

class _ExandbaleTextState extends State<ExandbaleText> {
  late String firstHAlf ;
  late String   secondHAlf ;
  bool hinddenText = true;
  double textHieght = Dimensions.screenHeight/5.63;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHieght)
      {
        firstHAlf=widget.text.substring(0,textHieght.toInt());
        secondHAlf =widget.text.substring(textHieght.toInt()+1,widget.text.length);

      }else{
      firstHAlf =widget.text;
      secondHAlf ="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHAlf.isEmpty?SmallText( height:1.8,size: Dimensions.font16, color: AppColors.paraColor,text: firstHAlf):Column(
        children: [
          SmallText(color: AppColors.paraColor,height: 1.8, size: Dimensions.font16,text: hinddenText?(firstHAlf+'...'):(firstHAlf+secondHAlf)),
          InkWell(
            onTap: (){
              setState(() {
                hinddenText=!hinddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: 'Show more', color: AppColors.mainColor,),
                Icon(hinddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
