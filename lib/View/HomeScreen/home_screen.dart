import 'package:betoapp/View/widgets/custom_text.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/views/widgets/custom_text.dart';

import '../HomeScreen2/home_screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List images=[
      'assets/images/carro_img.png',
      'assets/images/home_imgpng',
      'assets/images/fastfood_img.png',
      'assets/images/telephone_imgpng',
      'assets/images/gym_img.png',
      'assets/images/carro_img.png',
      'assets/images/fastfood_img.png',
      'assets/images/shopping_bag.png',
      'assets/images/shopping_bag.png',
      'assets/images/net_img.png',
    ];
    List text=[
      'Carro',
      'Renta',
      'Panda express',
      'Telefono',
      'Gym',
      'Uber',
      'Oxxo',
      'Playeras ZARA',
      'Tenis Nike',
      'Netflix',
    ];
    List text2=[
      '-\$5,000',
      '-\$6,500',
      '-\$350',
      '-\$1,200',
      '-\$500',
      '-\$80',
      '-\$200',
      '-\$800',
      '-\$300',
      '-\$300',
    ];
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: CustomText(text: 'Listado de gastos',fontSize: 24,fontWeight: FontWeight.w500,
            color: Colors.white),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 20)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24,left: 15),
              child: CustomText(text: '01 octubre 2023',fontSize: 14,fontWeight: FontWeight.w700,
                color: Colors.black,),
            ),
            SizedBox(height: 8,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              itemCount: images.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 390,height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.white,
                  ),
                  child:  ListTile(
                leading: Image.asset(images[index]),
                title: CustomText(text:text[index],fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),
                trailing: CustomText(text: text2[index],fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),
                ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2(),));
          },
          backgroundColor: Colors.teal,
          child: Icon(Icons.add,color: Colors.white),
        ),
      ),
    ),

    );
  }
}
