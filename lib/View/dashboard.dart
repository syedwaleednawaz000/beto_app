import 'package:betoapp/Utils/app_color.dart';
import 'package:betoapp/Utils/app_images.dart';
import 'package:betoapp/View/listado_history.dart';
import 'package:betoapp/Widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import 'HomeScreen/home_screen.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff009E90),
          onPressed: (){
            Get.to(()=> HomeScreen());
          },child: Icon(Icons.add,color: Colors.white,)),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            CustomAppBar(onTap: () {  },title: 'Pasos a realizar'),
            Container(
              margin: EdgeInsets.only(top: 100,right: 15.w,left: 15.w),

              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                return Container(
                  // height: 168.h,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(index == 0 ? AppImages.backBlue : AppImages.backWhite),fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 15.w),
                          child: Text(
                              "Finanzas Personales",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.purpleColor,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        ),
                        Spacer(),
                    SizedBox(
                      width: 99,
                      child: Text(
                        "Puntos a obtener",
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                                      ),
                    ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 170,
                          child: Text(
                              "Puedes destinar un pequeño % de tu flujo de efectivo (5% - 10%) a FMTY para ir acumulando ingresos pasivos en un instrumento de calidad, hazlo a través de GBM+.",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              )
                          ),
                        ),
                        // Spacer(),
                        Text(
                            "20 pts",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            index == 0 ? "":"Ver tutorial",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ],
                    )
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
