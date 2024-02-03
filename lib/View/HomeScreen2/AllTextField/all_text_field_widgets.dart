import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../widgets/custom_container_widgets.dart';
import '../../widgets/custom_text.dart';

/// first
class SelectFirstTextFieldWidgets extends StatefulWidget {
  const SelectFirstTextFieldWidgets({super.key});

  @override
  State<SelectFirstTextFieldWidgets> createState() => _SelectFirstTextFieldWidgetsState();
}
class _SelectFirstTextFieldWidgetsState extends State<SelectFirstTextFieldWidgets> {
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
  int selectedContainerIndexOne = -0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Instrumento',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
            height: 16
        ),
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
        SizedBox(
          height: 16,
        ),
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
          text: 'Tasa de interés',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: '12%',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
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
        CustomText(
          text: 'Plazo',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
            height: 16
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: '28 días',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(width: 16),
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
                  text: "Inversión única",
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
                  text: "Inversión recurrente",
                  color: selectedContainerIndexOne == 4 ? Color(0xFF009E90) : Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

/// second
class SelectSecondTextFieldWidgets extends StatefulWidget {
  const SelectSecondTextFieldWidgets({super.key});

  @override
  State<SelectSecondTextFieldWidgets> createState() => _SelectSecondTextFieldWidgetsState();
}
class _SelectSecondTextFieldWidgetsState extends State<SelectSecondTextFieldWidgets> {
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
  int selectedContainerIndex = -0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Plataforma',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
            height: 16
        ),
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
          text: 'Cantidad',
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
                      color: selectedContainerIndex == 0 ? Color(0xFF009E90) : Colors.white
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
        CustomText(
          text: 'Estrategia',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Update state or variable to track selection
                  selectedContainerIndex = 2;
                });
              },
              child: SizedBox(
                  width: 172,
                  child:CustomContainerWidgets(
                    icon: Icons.attach_money,
                    text: "Conservadora",
                      color: selectedContainerIndex == 2 ? Color(0xFF009E90) : Colors.white
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
                  selectedContainerIndex = 3;
                });
              },
              child: SizedBox(
                width: 172,
                  child: CustomContainerWidgets(
                    icon: Icons.trending_up,
                    text: "Moderada",
                      color: selectedContainerIndex == 3 ? Color(0xFF009E90) : Colors.white
                  )
              ),
            ),
          ],

        ),
        SizedBox(height: 16,),
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                // Update state or variable to track selection
                selectedContainerIndex = 4;
              });
            },
            child: Container(
              width: 172,
              height: 72,
              decoration: BoxDecoration(
    color: selectedContainerIndex == 4 ? Color(0xFF009E90) : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.10), // shadow color
                    spreadRadius: 2, // spread radius
                    blurRadius: 4,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Colors.black,
                    size: 30,
                  ),
                  CustomText(
                    text: "Agresiva",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

///four
class SelectFourTextFieldWidgets extends StatefulWidget {
  const SelectFourTextFieldWidgets({super.key});

  @override
  State<SelectFourTextFieldWidgets> createState() => _SelectFourTextFieldWidgetsState();
}
class _SelectFourTextFieldWidgetsState extends State<SelectFourTextFieldWidgets> {
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
  int selectedContainerIndex = -0;
  TextEditingController dateController = TextEditingController();
  String _selectedValueOne = '';
  final List<String> _selectOne = [
    "Stocks",
    "Bonds",
    "Mutual funds",
    "ETFs",
    "REITs",
    "P2P lending",
    'Cryptocurrencies'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Emisora',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
            height: 16
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
                  _selectedValueOne = value;
                });
              },
              itemBuilder: (context) =>
                  _selectOne.map((option) {
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
          TextEditingController(text: _selectedValueOne),
          // Set initial value
          readOnly: true,
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
              hintText: 'GBM',
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
          text: 'Numero de títulos',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
              hintText: '100',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),

        CustomText(
          text: 'Dividendo promedio al año por acción',
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
          height: 16,
        ),
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
                      color: selectedContainerIndex == 0 ? Color(0xFF009E90) : Colors.white
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

