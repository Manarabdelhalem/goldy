import 'package:flutter/material.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/constant/app_string.dart';
import 'package:goldy/core/widgets/cusstom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
      //  crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          CusstomButton(text: Text(AppString.gold), color: AppColor.primaryColor, onPressed: (){}),
          SizedBox(height: 20,),
          CusstomButton(text: Text(AppString.silver), color: AppColor.secondaryColor, onPressed: (){}),
        ],
      )
        
    );
  }
}