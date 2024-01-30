import 'package:betoapp/Utils/app_color.dart';
import 'package:betoapp/Utils/app_images.dart';
import 'package:betoapp/Widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            CustomAppBar(onTap: () {  },title: 'Pasos a realizar'),
            Container(
              padding: EdgeInsets.only(top: 100,right: 15.w,left: 15.w),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                return Container(
                  height: 168.h,
                decoration:  BoxDecoration(
                  // color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(index == 0 ? AppImages.backBlue : AppImages.backWhite),fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              "Finanzas Personales",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.purpleColor,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                          SizedBox(width: 40.w,),
                          Text("first "),
                        ],
                      ),
                    ),
                  ],
                ),
                );
              },),
            )

          ],
        ),
      ),
    );
  }
}
