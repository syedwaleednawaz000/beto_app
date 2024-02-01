import 'package:betoapp/View/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


class HomeScreen2 extends StatefulWidget {
  HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int selected = 1;
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
                    SizedBox(
                      width: 65,
                    ),
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
                SizedBox(
                  height: 20,
                ),
                selected == 1
                    ? Column(
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
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  // width: 172,
                                  height: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      CustomText(
                                        text: 'Ingreso Activo',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // width: 172,
                                  height: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                                        text: 'Ingreso Pasivo',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
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
                      )
                    : selected == 2
                        ? Container(
                            color: Colors.red,
                          )
                        : selected == 3
                            ? Container(
                                color: Colors.green,
                              )
                            : Container(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
