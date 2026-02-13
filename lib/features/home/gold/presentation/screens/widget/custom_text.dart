import 'package:flutter/material.dart';
import 'package:goldy/core/constant/app_color.dart';

class CusstomText extends StatelessWidget {
  const CusstomText({
    super.key,
    required this.text,
    this.color,
  });
final String text;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
     style: TextStyle(fontSize: 20,
      color: color ?? AppColor.primaryColor,
      fontWeight: FontWeight.bold,
     ),);
  }
}