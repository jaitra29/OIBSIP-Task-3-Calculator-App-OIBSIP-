import 'package:calculator_app/calculator_app_colors.dart';
import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SampleCalculateButton extends StatelessWidget {
  const SampleCalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue("=");
      },
      child: Container(
        height: 161,
        width: 71,
        decoration: BoxDecoration(
          color: CalculatorAppColors.secondColor,
          borderRadius: BorderRadius.circular(41),
        ),
        child:Center(child: Text("=",style: TextStyle(fontSize: 33,color: Colors.white),),),
      ),
    );
  }
}


