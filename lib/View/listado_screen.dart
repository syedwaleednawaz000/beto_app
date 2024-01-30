import 'package:betoapp/Utils/app_images.dart';
import 'package:betoapp/View/observation.dart';
import 'package:betoapp/Widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
class ListadoScreen extends StatefulWidget {
  const ListadoScreen({super.key});

  @override
  State<ListadoScreen> createState() => _ListadoScreenState();
}

class _ListadoScreenState extends State<ListadoScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      // NavigatorService.popAndPushNamed(
      //   AppRoutes.observacionesVerDetallesScreen,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(onTap: (){}, title: "Listado de ingresos"),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h,),
              titleText(title: "Ingresos activos"),
                mainContainer(title: "Primer sueldo",price: '25,000'),
                mainContainer(title: "Segundo sueldo",price: '5,000'),
                SizedBox(height: 16.h,),
                titleText(title: "Ingresos activos"),
                SizedBox(height: 16.h,),
                mainContainer(title: "Renta depa Morelia",price: '8,000'),
                mainContainer(title: "Cetes",price: '5,000'),
                mainContainer(title: "Fibras MTY",price: '5,000'),
            
              ],
            ),
          )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff009E90),
          onPressed: (){
            Get.to(()=> ObservationScreen());
          },child: Icon(Icons.add,color: Colors.white,)),
    );
  }

  Widget titleText({String? title}){
    return               Container(
      margin:  EdgeInsets.only(left: 15.w),
      child: Text(
          title!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          )
      ),
    );
  }
Widget mainContainer({String? title, String? price}){
    return             Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // You can set the shadow color here
            offset: Offset(0, 2), // Set the offset of the shadow
            blurRadius: 4, // Set the blur radius of the shadow
            spreadRadius: 0, // Set the spread radius of the shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin:  EdgeInsets.only(left: 15.w),
            child: Image.asset(
              AppImages.tradingImage,
              width: 20,
              height: 12,
            ),
          ),
          SizedBox(width: 8.w,),
          Text(
              title!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: Text(
                "\$${price}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )
            ),
          )
        ],
      ),
    );
}
}
