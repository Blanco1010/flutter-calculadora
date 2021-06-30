import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sub_result.dart';
import 'line_separator.dart';
import 'main_result.dart';

class MathResults extends StatelessWidget {
  final calculatorCrtl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCrtl.firstNumber}'),
            SubResult(text: '${calculatorCrtl.operation}'),
            SubResult(text: '${calculatorCrtl.secondNumber}'),
            LineSeparator(),
            MainResultText(text: '${calculatorCrtl.mathResult}'),
          ],
        ));
  }
}
