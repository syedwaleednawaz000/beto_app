import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  TextStyle? style;
  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
   CustomText({
    required this.text,this.style,this.fontSize,this.fontWeight,this.color,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style:TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
