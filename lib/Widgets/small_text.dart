import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;

  Color? color;

  double size;

  double height;

  SmallText(
      {Key? key,
      required this.text,
      this.color = const Color(0xff5c524f),
      this.height = 1.2,
      this.size = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}
