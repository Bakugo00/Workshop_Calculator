import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/calculator_controller.dart';

// ignore: must_be_immutable
class NumberButton extends StatelessWidget {
  NumberButton({super.key, required this.number});
  String number;
  CalculatorController calculatorController=Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        calculatorController.inputNumber(number);
      },
      child: Text(
        number,
        style:const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),
      ),
    );
  }
}
