import 'package:calculator_app/calculator_app_colors.dart';
import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/screens/front_main_home_page.dart';
import 'package:calculator_app/widgets/simple_custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyCalculatorMainApp());
}



class MyCalculatorMainApp extends StatelessWidget {
  
   const MyCalculatorMainApp({super.key});
   
   @override
   Widget build(BuildContext context) {
     
     return  ChangeNotifierProvider(
       create: (context) => CalculatorProvider(),
       child: MaterialApp(
         theme: ThemeData.dark(),
         debugShowCheckedModeBanner: false,
         home: const HomeFrontScreen(),
         ),
     );
 
   }

}

