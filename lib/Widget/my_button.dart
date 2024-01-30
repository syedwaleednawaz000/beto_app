import 'package:betoapp/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  String? title;
  void Function()? onTap;
   MyButton({this.onTap,this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        margin: EdgeInsets.only(left: 30.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.purpleColor),
        width: double.infinity,
        child: Center(
            child: Text(
              title!,
              style: TextStyle(color: AppColor.whiteColor),
            )),
      ),
    );
  }
}
