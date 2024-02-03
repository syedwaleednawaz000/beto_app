import 'package:betoapp/View/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../HomeScreen/AnadirTransaccionGastosScreen/anadir_transaccion_gastos.dart';
import '../HomeScreen/AnadirTransaccionIngresosScreen/anadir_transaccion_ingresos_screen.dart';
import '../HomeScreen/AnadirTransaccionPatrimonioScreen/anadir_transaccion_patrimonio_screen.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({super.key});
  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}
class _HomeScreen2State extends State<HomeScreen2> {
  int selected = 1;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
        width: 360,
        height: 56,
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 44),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.teal,
        ),
        child: Center(
          child: CustomText(
              text: 'Guardar',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/Background_img.png",
                ))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 59),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,
                            color: Colors.black, size: 20)),
                    SizedBox(width: 65),
                    CustomText(
                        text: 'Añadir transacción',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    // width: 360,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    selected == 1 ? Colors.teal : Colors.white),
                            child: Center(
                              child: CustomText(
                                  text: 'Ingresos',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selected == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    selected == 2 ? Colors.teal : Colors.white),
                            child: Center(
                              child: CustomText(
                                  text: 'Gastos',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selected == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 3;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    selected == 3 ? Colors.teal : Colors.white),
                            child: Center(
                              child: CustomText(
                                  text: 'Patrimonio',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selected == 3
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                selected == 1
                    ? AnadirTransaccionIngresosScreen()
                    : selected == 2
                        ? AnadirTransaccionGastosScreen()
                        : selected == 3
                            ?  AnadirTransaccionPatrimonioScreen()
                            : Container(),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
