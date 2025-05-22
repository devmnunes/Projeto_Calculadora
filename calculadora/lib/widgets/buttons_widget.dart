import 'package:calculadora/core/colors.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final Function(String) onPressed;
  final double width;
  final double height;
  final Color color;
 
 
  const ButtonCustom(String s, {
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 75,
    this.height = 75,
    this.color = Colors.grey,
   
  }) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        onPressed(text);
                      },
                      child: Text(text, style: TextStyle(fontSize: 48)),
                    ),
                  ),
                );
  }
}