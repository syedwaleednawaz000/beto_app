import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../Utils/appConstant.dart';
import '../../widgets/custom_container_widgets.dart';
import '../../widgets/custom_text.dart';

class AnadirTransaccionIngresosScreen extends StatefulWidget {
  AnadirTransaccionIngresosScreen({super.key});

  @override
  State<AnadirTransaccionIngresosScreen> createState() => _AnadirTransaccionIngresosScreenState();
}

class _AnadirTransaccionIngresosScreenState extends State<AnadirTransaccionIngresosScreen> {
  TextEditingController dateController = TextEditingController();
  String _selectedValue = ''; // Initialize with a default value
  final List<String> _options = [
    "Stocks",
    "Bonds",
    "Mutual funds",
    "ETFs",
    "REITs",
    "P2P lending",
    'Cryptocurrencies'
  ];
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
int selectedContainerIndexOne = -0;
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
          height: 16),
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
                  selectedContainerIndexOne = 1;
                });
              },
              child: SizedBox(
                width: 172,
                child:CustomContainerWidgets(
                  icon: Icons.trending_up,
                  text: "Ingreso Activo",
                  color: selectedContainerIndexOne == 1 ? Color(0xFF009E90) : Colors.white,

                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        CustomText(
          text: 'Fuente de ingreso pasivo',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Seleccionar',
            fillColor: Colors.white,
            filled: true,
            suffixIcon: PopupMenuButton<String>(
              icon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              itemBuilder: (context) =>
                  _options.map((option) {
                    return PopupMenuItem(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          controller:
          TextEditingController(text: _selectedValue),
          // Set initial value
          readOnly: true,
        ),
      ],
    );
  }
}
