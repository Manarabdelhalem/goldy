import 'package:flutter/material.dart';

class CusstomButton extends StatelessWidget {
  const CusstomButton({super.key, this.onPressed, required this.text,required this.color});
  final void Function()? onPressed;
  final Widget text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        child: ElevatedButton(
         style: ElevatedButton.styleFrom(
        
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        onPressed: onPressed, 
        child: text),
      ),
    );
  }
}