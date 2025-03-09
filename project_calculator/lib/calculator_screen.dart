import 'package:flutter/material.dart';
import 'package:calculator/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String number1 = ""; // First number
  String operand = ""; // Operator (+, -, *, /)
  String number2 = ""; // Second number

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Output Display
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "$number1$operand$number2".isEmpty ? "0" : "$number1$operand$number2",
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            // Buttons
            Wrap(
              children: Btn.buttonValues
                  .map(
                    (value) => SizedBox(
                      width: value == Btn.calculate ? screenSize.width / 2 : screenSize.width / 4,
                      height: screenSize.width / 5,
                      child: buildButton(value),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(String value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getBtnColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          onTap: () => onBtnTap(value),
          child: Center(
            child: Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
        ),
      ),
    );
  }

  void onBtnTap(String value) {
    setState(() {
      if (value == Btn.del) {
        delete();
      } else if (value == Btn.clr) {
        clearAll();
      } else if (value == Btn.per) {
        convertToPercentage();
      } else if (value == Btn.calculate) {
        calculate();
      } else {
        appendValue(value);
      }
    });
  }

  // Perform Calculation
  void calculate() {
    if (number1.isEmpty || operand.isEmpty || number2.isEmpty) return;

    final double num1 = double.parse(number1);
    final double num2 = double.parse(number2);
    double result = 0.0;

    switch (operand) {
      case Btn.add:
        result = num1 + num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.multiply:
        result = num1 * num2;
        break;
      case Btn.divide:
        result = num2 != 0 ? num1 / num2 : 0;
        break;
    }

    setState(() {
      number1 = result.toString();
      if (number1.endsWith(".0")) {
        number1 = number1.substring(0, number1.length - 2);
      }
      operand = "";
      number2 = "";
    });
  }

  // Convert to Percentage
  void convertToPercentage() {
    if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
      calculate();
    }

    if (operand.isNotEmpty) return;

    double num = double.tryParse(number1) ?? 0;
    setState(() {
      number1 = "${num / 100}";
      operand = "";
      number2 = "";
    });
  }

  // Clear All Values
  void clearAll() {
    setState(() {
      number1 = "";
      operand = "";
      number2 = "";
    });
  }

  // Delete Last Character
  void delete() {
    if (number2.isNotEmpty) {
      number2 = number2.substring(0, number2.length - 1);
    } else if (operand.isNotEmpty) {
      operand = "";
    } else if (number1.isNotEmpty) {
      number1 = number1.substring(0, number1.length - 1);
    }
  }

  // Append Numbers and Operators
  void appendValue(String value) {
    if (["+", "-", "×", "÷"].contains(value)) {
      if (number1.isNotEmpty && number2.isEmpty) {
        operand = value;
      } else if (number1.isNotEmpty && number2.isNotEmpty) {
        calculate();
        operand = value;
      }
      return;
    }

    if (value == Btn.dot) {
      if (operand.isEmpty && !number1.contains(".")) {
        number1 += number1.isEmpty ? "0." : ".";
      } else if (operand.isNotEmpty && !number2.contains(".")) {
        number2 += number2.isEmpty ? "0." : ".";
      }
      return;
    }

    if (operand.isEmpty) {
      number1 += value;
    } else {
      number2 += value;
    }
  }

  Color getBtnColor(String value) {
    return [Btn.del, Btn.clr].contains(value)
        ? Colors.blueGrey
        : [Btn.per, Btn.multiply, Btn.add, Btn.subtract, Btn.divide, Btn.calculate].contains(value)
            ? Colors.orange
            : Colors.black87;
  }
}
