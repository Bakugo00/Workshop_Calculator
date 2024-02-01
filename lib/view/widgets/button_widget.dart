import 'package:calculator_app/logic/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ButtonCalc extends StatelessWidget {
  ButtonCalc(
      {super.key,
      required this.color,
      required this.icon,
      required this.iconColor});
  Color color;
  Color iconColor;
  IconData icon;
  CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: IconButton(
        onPressed: () {
          calculatorController.inputOperator(icon);
        },
        icon: Icon(
          icon,
          color: iconColor,
        ),
        highlightColor: Colors.white10,
      ),
    );
  }
}
