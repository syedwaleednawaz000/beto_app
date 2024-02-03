import 'package:betoapp/Utils/appConstant.dart';
import 'package:betoapp/Utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../HomeScreen2/AllTextField/all_text_field_widgets.dart';
import '../../HomeScreen2/AllTextField/select_five_textField_widgets.dart';
import '../../HomeScreen2/AllTextField/select_three_textField_widgets.dart';
import '../../HomeScreen2/IngresosPasivosDropdownTextField/ingresos_pasivos_dropdown_textField.dart';
import '../../widgets/custom_text.dart';

class AnadirTransaccionPatrimonioScreen extends StatefulWidget {
  AnadirTransaccionPatrimonioScreen({Key? key}) : super(key: key);

  @override
  State<AnadirTransaccionPatrimonioScreen> createState() =>
      _AnadirTransaccionPatrimonioScreenState();
}

class _AnadirTransaccionPatrimonioScreenState
    extends State<AnadirTransaccionPatrimonioScreen> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Tipo de inversión',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics:NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (_selectedIndex == index) {
                    _selectedIndex = -1;
                  } else {
                    _selectedIndex = index; // Update the selected index
                  }
                });
              },
              child: Container(
                height: 63,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: _selectedIndex == index ? AppColor.purpleColor :Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: CustomText(
                    text: AppConstant.listViewText[index],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
        // Conditionally display the selected containers based on _selectedIndex
        if (_selectedIndex == 0) SelectFirstTextFieldWidgets(),
        if (_selectedIndex == 1) SelectSecondTextFieldWidgets(),
        if (_selectedIndex == 2) SelectThreeTextFieldWidgets(),
        if (_selectedIndex == 3) SelectFourTextFieldWidgets(),
        if (_selectedIndex == 4) SelectFiveTextFieldWidgets(),
      ],
    );
  }
}
