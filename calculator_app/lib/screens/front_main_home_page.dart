import 'package:calculator_app/calculator_app_colors.dart';
import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screens/data_file.dart';
import 'package:calculator_app/widgets/calculator_button.dart';
import 'package:calculator_app/widgets/sample_calculate_button_page.dart';
import 'package:calculator_app/widgets/simple_custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeFrontScreen extends StatelessWidget {
  const HomeFrontScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = EdgeInsets.symmetric(horizontal: 26, vertical: 32);

    return Consumer<CalculatorProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Center(child: Text("Fancy Calculator App")),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
               SimpleTextFieldWidget(controller: provider.compController),
              const Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: const BoxDecoration(
                  color: CalculatorAppColors.firstColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(31)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index + 4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index + 8]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 12]),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 15]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 21,),
                        SampleCalculateButton(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}