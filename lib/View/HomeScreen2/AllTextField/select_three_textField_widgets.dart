import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../IngresosPasivosDropdownTextField/ingresos_pasivos_dropdown_textField.dart';

class SelectThreeTextFieldWidgets extends StatefulWidget {
  const SelectThreeTextFieldWidgets({Key? key});

  @override
  State<SelectThreeTextFieldWidgets> createState() => _SelectThreeTextFieldWidgetsState();
}

class _SelectThreeTextFieldWidgetsState extends State<SelectThreeTextFieldWidgets> {
  TextEditingController dateController = TextEditingController();
  String _selectedValue = '';
  int _selectedIndex = -1; // Index of the selected dropdown item
  final List<String> _options = [
    "Fibras/Reits",
    "Renta fija/ Sofipos",
    "Propiedades",
    "Otros",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Categoría',
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
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                  _selectedIndex = _options.indexOf(value);
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
          controller: TextEditingController(text: _selectedValue),
          readOnly: true,
        ),
        SizedBox(height: 16),
        if (_selectedIndex != -1) // Only show the selected widget if an option is selected
          Visibility(
            visible: _selectedIndex == 0,
            child: FibrasReitsDropdownTextField(),
          ),
        if (_selectedIndex != -1)
          Visibility(
            visible: _selectedIndex == 1,
            child: RentaSofiposTextFieldWidgets(),
          ),
        if (_selectedIndex != -1)
          Visibility(
            visible: _selectedIndex == 2,
            child: PropiedadesTextFieldWidgets(),
          ),
        if (_selectedIndex != -1)
          Visibility(
            visible: _selectedIndex == 3,
            child: OtrosTextFieldWidgets(),
          ),
      ],
    );
  }
}
