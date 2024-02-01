import 'package:calculator_app/logic/calculator_controller.dart';
import 'package:calculator_app/view/widgets/button_widget.dart';
import 'package:calculator_app/view/widgets/number_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';

// ignore: must_be_immutable
class MainScreen extends GetWidget<CalculatorController> {
  MainScreen({super.key});
  @override
  CalculatorController controller = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GetBuilder<CalculatorController>(builder: (builder) {
              return TextField(
                keyboardType: TextInputType.none,
                controller: controller.input,
                style: const TextStyle(fontSize: 50, color: Colors.white),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              );
            }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.5,
            color: Colors.grey,
          ),
          Row(
            children: [
              ButtonCalc(
                color: Colors.black,
                icon: Icons.clear_all,
                iconColor: MyColors.orangeCus,
              ),
              SizedBox(
                width: 30,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: Icons.backspace_outlined,
                iconColor: MyColors.orangeCus,
              ),
              SizedBox(
                width: 35,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: Icons.percent,
                iconColor: MyColors.orangeCus,
              ),
              SizedBox(
                width: 27,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: CupertinoIcons.divide,
                iconColor: MyColors.orangeCus,
              ),
            ],
          ),
          Row(
            children: [
              NumberButton(number: "7"),
              const SizedBox(
                width: 40,
              ),
              NumberButton(number: "8"),
              SizedBox(
                width: 40,
              ),
              NumberButton(number: "9"),
              SizedBox(
                width: 27,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: Icons.close,
                iconColor: MyColors.orangeCus,
              ),
            ],
          ),
          Row(
            children: [
              NumberButton(number: "4"),
              const SizedBox(
                width: 40,
              ),
              NumberButton(number: "5"),
              SizedBox(
                width: 40,
              ),
              NumberButton(number: "6"),
              SizedBox(
                width: 27,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: Icons.remove,
                iconColor: MyColors.orangeCus,
              ),
            ],
          ),
          Row(
            children: [
              NumberButton(number: "1"),
              const SizedBox(
                width: 40,
              ),
              NumberButton(number: "2"),
              SizedBox(
                width: 40,
              ),
              NumberButton(number: "3"),
              SizedBox(
                width: 27,
              ),
              ButtonCalc(
                color: Colors.black,
                icon: Icons.add,
                iconColor: MyColors.orangeCus,
              ),
            ],
          ),
          Row(
            children: [
              NumberButton(number: "0"),
              const SizedBox(
                width: 40,
              ),
              NumberButton(number: "."),
              SizedBox(
                width: 30,
              ),
              NumberButton(number: "ANS"),
              SizedBox(
                width: 20,
              ),
              ButtonCalc(
                color: MyColors.orangeCus,
                icon: Icons.drag_handle,
                iconColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
