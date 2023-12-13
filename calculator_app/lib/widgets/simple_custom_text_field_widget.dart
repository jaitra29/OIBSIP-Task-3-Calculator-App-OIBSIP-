import 'package:calculator_app/calculator_app_colors.dart';
import 'package:flutter/material.dart';

class SimpleTextFieldWidget extends StatelessWidget {
  const SimpleTextFieldWidget({
    super.key,
    required this.controller
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding( // create A Widget Called Anything Named and Add it in the widget Folder
     padding: EdgeInsets.symmetric(horizontal:26,vertical:32),
     child: TextField(
       controller: controller,
       decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: CalculatorAppColors.firstColor,
        filled: true,
      ),
       style: TextStyle(fontSize: 52),
       readOnly: true,
       autofocus: true,
       showCursor: true,
     ),    
             );
  }
}