import 'package:flutter/material.dart';

import 'custom_text.dart';
class CustomContainerWidgets extends StatelessWidget {
  final IconData icon;
  String text;
  Color color;

   CustomContainerWidgets({super.key,required this.text,required this.color,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      height: 72,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.10), // shadow color
            spreadRadius: 2, // spread radius
            blurRadius: 4,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          CustomText(
            text: text.toString(),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
// attach_money
// trending_up