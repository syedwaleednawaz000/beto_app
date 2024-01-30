import 'package:betoapp/Utils/app_color.dart';
import 'package:betoapp/Utils/app_images.dart';
import 'package:betoapp/View/dashboard.dart';
import 'package:betoapp/Widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ObservationScreen extends StatelessWidget {
  const ObservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyButton(
          onTap: (){
            Get.to(()=> DashBoard());
            },
          title: "Regresar"),
        body: Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 48.h,
        ),
        Text("Observaciones: PPR",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
        SizedBox(
          height: 26.h,
        ),
        Expanded(
          // padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus',
                      style: TextStyle(
                        color: AppColor.greyColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in,',
                          style: TextStyle(color: AppColor.purpleColor),
                        ),
                        TextSpan(
                          text:
                              ' viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.!',
                          style: TextStyle(color: AppColor.greyColor),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppImages.personData,
                    height: 244.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.",
                    style: TextStyle(color: AppColor.greyColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
