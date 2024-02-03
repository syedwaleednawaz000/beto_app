import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../widgets/custom_container_widgets.dart';
import '../../widgets/custom_text.dart';

/// one
class FibrasDropdownActivosTextFieldWidgets extends StatefulWidget {
  FibrasDropdownActivosTextFieldWidgets({super.key});
  @override
  State<FibrasDropdownActivosTextFieldWidgets> createState() => _FibrasDropdownActivosTextFieldWidgetsState();
}
class _FibrasDropdownActivosTextFieldWidgetsState extends State<FibrasDropdownActivosTextFieldWidgets> {
  TextEditingController dateController = TextEditingController();
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      String str = args.value.toString();
      int startIndex = str.indexOf("startDate:") + 10;
      int endIndex = str.indexOf(",", startIndex);
      String startDate = str.substring(startIndex, endIndex);
      print(startDate.substring(0,11));
      dateController.text = startDate.substring(0,11);
      print("this is year ${args.value}");
    });
    // TODO: implement your code here
  }
int selectedContainerIndexTwo = -0;
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
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Precio',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
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
        SizedBox(height: 16),
        CustomText(
          text: 'Cantidad',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Ubicación',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Fecha',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
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
        SizedBox(height: 16),
        Row(
          children: [
            CustomText(
              text: 'Frecuencia de inversión',
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
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexTwo = 0;
                });
              },
              child: SizedBox(
                  width: 172,
                  child:CustomContainerWidgets(
                    icon: Icons.attach_money,
                    text: "Inversión única",
                      color: selectedContainerIndexTwo == 0 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
            SizedBox(
                width: 16
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexTwo = 1;
                });
              },
              child: SizedBox(
                  width: 172,
                  child: CustomContainerWidgets(
                    icon: Icons.trending_up,
                    text: "Inversión recurrente",
                      color: selectedContainerIndexTwo == 1 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

/// Two
class RentaSofiposActivosTextFieldWidgets extends StatefulWidget {
  const RentaSofiposActivosTextFieldWidgets({super.key});

  @override
  State<RentaSofiposActivosTextFieldWidgets> createState() => _RentaSofiposActivosTextFieldWidgetsState();
}
class _RentaSofiposActivosTextFieldWidgetsState extends State<RentaSofiposActivosTextFieldWidgets> {
  TextEditingController dateController = TextEditingController();
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      String str = args.value.toString();
      int startIndex = str.indexOf("startDate:") + 10;
      int endIndex = str.indexOf(",", startIndex);
      String startDate = str.substring(startIndex, endIndex);
      print(startDate.substring(0,11));
      dateController.text = startDate.substring(0,11);
      print("this is year ${args.value}");
    });
    // TODO: implement your code here
  }
  int selectedContainerIndex = -0;
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
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Plataforma',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Precio',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: '\$1000',
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
        SizedBox(height: 16),
        CustomText(
          text: 'Número de criptos',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: '10',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Fecha',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
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
        SizedBox(height: 16),
        Row(
          children: [
            CustomText(
              text: 'Frecuencia de inversión',
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
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndex = 0;
                });
              },
              child: SizedBox(
                  width: 172,
                  child:CustomContainerWidgets(
                    icon: Icons.attach_money,
                    text: "Inversión única",
                    color: selectedContainerIndex == 0 ? Color(0xFF009E90) : Colors.white,

                  )
              ),
            ),
            SizedBox(
                width: 16
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndex = 1;
                });
              },
              child: SizedBox(
                  width: 172,
                  child: CustomContainerWidgets(
                    icon: Icons.trending_up,
                    text: "Inversión recurrente",
                      color: selectedContainerIndex == 1 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

/// three
class OtrosActivosTextFieldWidgets extends StatefulWidget {
  const OtrosActivosTextFieldWidgets({super.key});

  @override
  State<OtrosActivosTextFieldWidgets> createState() => _OtrosActivosTextFieldWidgetsState();
}
class _OtrosActivosTextFieldWidgetsState extends State<OtrosActivosTextFieldWidgets> {
  TextEditingController dateController = TextEditingController();
  @override  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      String str = args.value.toString();
      int startIndex = str.indexOf("startDate:") + 10;
      int endIndex = str.indexOf(",", startIndex);
      String startDate = str.substring(startIndex, endIndex);
      print(startDate.substring(0,11));
      dateController.text = startDate.substring(0,11);
      print("this is year ${args.value}");
    });
    // TODO: implement your code here
  }
int selectedContainerIndexOne = -0;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        CustomText(
          text: 'Nombre',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Precio',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
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
        SizedBox(height: 16),
        CustomText(
          text: 'Fecha',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        GestureDetector(
          onTap: (){
            showDialog(context: context, builder: (context) {
              return Dialog(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  // width: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SfDateRangePicker(
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                        ),
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
        SizedBox(height: 16),
        Row(
          children: [
            CustomText(
              text: 'Frecuencia de inversión',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(width: 16),
            Icon(
              Icons.help,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
        SizedBox(height: 16),
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
                  child:CustomContainerWidgets(
                    icon: Icons.attach_money,
                    text: "Inversión única",
                      color: selectedContainerIndexOne == 0 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
            SizedBox(width: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndexOne = 1;
                });
              },
              child: SizedBox(
                  width: 172,
                  child: CustomContainerWidgets(
                    icon: Icons.trending_up,
                    text: "Inversión recurrente",
                      color: selectedContainerIndexOne == 1 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

