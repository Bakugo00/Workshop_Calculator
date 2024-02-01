import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorController extends GetxController {
  String result = "0";
  TextEditingController input = TextEditingController(text: '0');
  String ancestor="0";  
  removeChar() {
    var cursorPos = input.selection.base.offset;
    if (cursorPos==-1) {
      if (input.text.length<2) {
      input.text="0";
      }else{
        input.text=input.text.substring(0, input.text.length - 1);
      }
      
      return input.text;
    }else if(cursorPos==0){
      return input.text;
    }
    String suffixText = input.text.substring(cursorPos);
    String prefixText = input.text.substring(0, cursorPos - 1);
    if (input.text.length<2) {
      input.text="0";
    }
    else if (cursorPos == input.text.length) {
      input.text = prefixText;
    } else {
      input.text = prefixText + suffixText;
    }
    return input.text;
  }

  void clearAll() {
    input.text = "0";
  }

  void inputNumber(String text) {
    if (input.text != "0") {
      if (text=="ANS") {
        input.text = input.text + ancestor;
      }else{
        input.text = input.text + text;
      }
      
    } else {
      if (text=="ANS") {
        input.text = ancestor;
      }else{
        input.text = text;
      }
    }
  }
  void calculateResult(){
    input.text = "${input.text.interpret()}";
    ancestor=input.text;
  }

  void inputOperator(IconData iconInput) {
    switch (iconInput) {
      case Icons.clear_all:
        clearAll();
        break;
      case Icons.backspace_outlined:
        input.text = /*input.text.length < 2 ? "0" : */ removeChar();
        break;
      case Icons.percent:
        input.text = "${input.text}%";
        break;
      case CupertinoIcons.divide:
        input.text = "${input.text}/";
        break;
      case Icons.close:
        input.text = "${input.text}*";
        break;
      case Icons.remove:
        input.text = "${input.text}-";
        break;
      case Icons.add:
        input.text = "${input.text}+";
        break;
      case Icons.drag_handle:
        calculateResult();
        break;
      default:
    }
  }
}
