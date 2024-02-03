import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../widgets/custom_container_widgets.dart';
import '../../widgets/custom_text.dart';

/// one
class FibrasReitsDropdownTextField extends StatefulWidget {
   FibrasReitsDropdownTextField({super.key});
  @override
  State<FibrasReitsDropdownTextField> createState() => _FibrasReitsDropdownTextFieldState();
}
class _FibrasReitsDropdownTextFieldState extends State<FibrasReitsDropdownTextField> {
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
              hintText: 'Cetes 28',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
        SizedBox(height: 16),
        CustomText(
          text: 'Dividendo',
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

/// second
class RentaSofiposTextFieldWidgets extends StatefulWidget {
  const RentaSofiposTextFieldWidgets({super.key});

  @override
  State<RentaSofiposTextFieldWidgets> createState() => _RentaSofiposTextFieldWidgetsState();
}
class _RentaSofiposTextFieldWidgetsState extends State<RentaSofiposTextFieldWidgets> {
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
          text: 'Plazo',
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
          text: 'Intereses',
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


///three
class PropiedadesTextFieldWidgets extends StatefulWidget {
  const PropiedadesTextFieldWidgets({super.key});

  @override
  State<PropiedadesTextFieldWidgets> createState() => _PropiedadesTextFieldWidgetsState();
}
class _PropiedadesTextFieldWidgetsState extends State<PropiedadesTextFieldWidgets> {
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

  TextEditingController dateController = TextEditingController();
  String _selectedValueOne = '';
  String _selectedValueTwo = '';
  String _selectedValueThree = '';
  final List<String> _selectOne = [
    "Stocks",
    "Bonds",
    "Mutual funds",
    "ETFs",
    "REITs",
    "P2P lending",
    'Cryptocurrencies'
  ];
  final List<String> _selectTwo = [
    "Stocks",
    "Bonds",
    "Mutual funds",
    "ETFs",
    "REITs",
    "P2P lending",
    'Cryptocurrencies'
  ];
  final List<String> _selectThree = [
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
          text: 'Departamento',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
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
          text: 'Valor total',
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
          text: 'Ubicación',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'México',
            fillColor: Colors.white,
            filled: true,
            suffixIcon: PopupMenuButton<String>(
              icon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              onSelected: (value) {
                setState(() {
                  _selectedValueTwo = value;
                });
              },
              itemBuilder: (context) =>
                  _selectTwo.map((option) {
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
          TextEditingController(text: _selectedValueTwo),
          // Set initial value
          readOnly: true,
        ),
        SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'México',
            fillColor: Colors.white,
            filled: true,
            suffixIcon: PopupMenuButton<String>(
              icon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              onSelected: (value) {
                setState(() {
                  _selectedValueThree = value;
                });
              },
              itemBuilder: (context) =>
                  _selectThree.map((option) {
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
          TextEditingController(text: _selectedValueThree),
          // Set initial value
          readOnly: true,
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
      ],
    );
  }
}

/// four
class OtrosTextFieldWidgets extends StatefulWidget {
  const OtrosTextFieldWidgets({super.key});

  @override
  State<OtrosTextFieldWidgets> createState() => _OtrosTextFieldWidgetsState();
}
class _OtrosTextFieldWidgetsState extends State<OtrosTextFieldWidgets> {
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
  int selectedContainerIndex = -0;
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
          text: 'Ingreso estimado',
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
            SizedBox(
              width: 172,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Update state or variable to track selection
                    selectedContainerIndex = 0;
                  });
                },
                child: CustomContainerWidgets(
                  icon: Icons.attach_money,
                  text: "Inversión única",
                    color: selectedContainerIndex == 0 ? Color(0xFF009E90) : Colors.white
                ),
              ),
            ),
            SizedBox(width: 16),
            SizedBox(
              width: 172,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Update state or variable to track selection
                    selectedContainerIndex = 1;
                  });
                },
                child: CustomContainerWidgets(
                  icon: Icons.trending_up,
                  text: "Inversión recurrente",
                    color: selectedContainerIndex == 1 ? Color(0xFF009E90) : Colors.white
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

