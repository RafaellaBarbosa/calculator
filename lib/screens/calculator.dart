import 'package:calculator/componets/display.dart';
import 'package:calculator/componets/keyboard.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _displayText = '0';

  void _onPressed(String value) {
    setState(() {
      if (_displayText == '0' && value != 'AC') {
        _displayText = value;
      } else if (value == 'AC') {
        _displayText = '0';
      } else {
        _displayText += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Display(text: _displayText),
          Keyboard(onPressed: _onPressed),
        ],
      ),
    );
  }
}
