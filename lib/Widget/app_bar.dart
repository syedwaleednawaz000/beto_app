import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  void Function()? onTap;
  String? title ;
   CustomAppBar({required this.onTap, required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
        color: Color(0xff009E90),
      ),
      child: Row(
        children: [
          SizedBox(width: 15.w,),
          GestureDetector(
              onTap: onTap,
              child: Icon(Icons.arrow_back,size: 24,color: Colors.white,)),
          SizedBox(width: 20.w,),
          Text(
              title!,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              )
          ),
        ],
      ),
    );
  }
}
