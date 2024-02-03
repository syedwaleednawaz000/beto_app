import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../Utils/appConstant.dart';
import '../../widgets/custom_container_widgets.dart';
import '../../widgets/custom_text.dart';

class AnadirTransaccionGastosScreen extends StatefulWidget {
   AnadirTransaccionGastosScreen({super.key});

  @override
  State<AnadirTransaccionGastosScreen> createState() => _AnadirTransaccionGastosScreenState();
}

class _AnadirTransaccionGastosScreenState extends State<AnadirTransaccionGastosScreen> {
  TextEditingController dateController = TextEditingController();

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      String str = args.value.toString();
      int startIndex = str.indexOf("startDate:") + 10; // Find the position of "startDate:"
      int endIndex = str.indexOf(",", startIndex); // Find the position of the next comma
      String startDate = str.substring(startIndex, endIndex); // Extract the substring between the two commas

      print(startDate.substring(0,11));
      dateController.text = startDate.substring(0,11);
      print("this is year ${args.value}");
    });
    // TODO: implement your code here
  }
 int selectedContainerIndex  = -1;
 int selectedContainerIndexOne  = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Nombre',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Negocio familiar',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: 'Cantidad',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: '\$100',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              suffixIcon: Container(
                width: 50,
                // color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: 'MXN'),
                  ],
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: 'Fecha',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: (){
            showDialog(context: context, builder: (context) {
              return                 Dialog(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  // width: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SfDateRangePicker(
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                        )

                      ],
                    ),
                  ),
                ),
              );
            },);
          },
          child: TextFormField(
            enabled: false,
            controller: dateController,
            decoration: InputDecoration(
              hintText: 'Lun 25 Sep',
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.calendar_month,
                  color: Colors.blue),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            CustomText(
              text: 'Frecuencia de gasto',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.help,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexOne = 0;
                });
              },
              child: SizedBox(
                width: 172,
                child:
                  CustomContainerWidgets(
                    icon: Icons.attach_money,
                    text: "Ingreso Activo",
                    color: selectedContainerIndexOne == 0 ? Color(0xFF009E90) : Colors.white,

                  ),
              ),
            ),
            SizedBox(width: 16,),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexOne = 2;
                });
              },
              child: SizedBox(
                width: 172,
                child:CustomContainerWidgets(
                  icon: Icons.trending_up,
                  text: "Ingreso Activo",
                  color: selectedContainerIndexOne == 2 ? Color(0xFF009E90) : Colors.white,

                ),
              ),
            ),
          ],
        ),
        SizedBox(
            height: 20),
        Row(
          children: [
            CustomText(
              text: 'Tipo de ingreso',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.help,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexOne = 3;
                });
              },
              child: SizedBox(
                width: 172,
                child: CustomContainerWidgets(
                  icon: Icons.attach_money,
                  text: "Gasto necesario",
                  color: selectedContainerIndexOne == 3 ? Color(0xFF009E90) : Colors.white,
                ),
              ),
            ),
            SizedBox(width: 16,),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexOne = 4;
                });
              },
              child: SizedBox(
                width: 172,
                child: CustomContainerWidgets(
                  icon: Icons.trending_up,
                  text: "Gasto innecesario",
                  color: selectedContainerIndexOne == 4 ? Color(0xFF009E90) : Colors.white,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
            height: 20),
        CustomText(
          text: 'Categoria',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
            height: 16),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 16,left: 8,right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle container selection here
                  setState(() {
                    // Update selected index or color
                    // For example:
                    selectedContainerIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: selectedContainerIndex == index ? Color(0xFFCECAFF) : Colors.white, // Change color based on selection
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          AppConstant.imagesList[index],
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 2,),
                    Center(
                      child: Text(
                        AppConstant.textList[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
