import 'package:calculator_app/calculator_app_colors.dart';
import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleButtonOne extends StatelessWidget {
  const ExampleButtonOne({
    super.key,
    required this.labelofButton,
     this.textColor = Colors.white,
  });

  final String labelofButton;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue(labelofButton);
      },
      child: Material(
         elevation: 4,
         color:CalculatorAppColors.thirdColor,
         borderRadius: BorderRadius.circular(51),
        child: CircleAvatar(
          radius: 37,
          backgroundColor: CalculatorAppColors.thirdColor,
          child: Text(
            labelofButton,
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
              color: textColor,
              ),
          ),
                  
        ),
      ),
    );
  }
}