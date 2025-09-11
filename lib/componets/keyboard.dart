import 'package:calculator/componets/button.dart';
import 'package:calculator/componets/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPressed;
  const Keyboard({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(text: "AC", onPressed: onPressed),
              Button(text: "+/-", onPressed: onPressed),
              Button(text: "%", onPressed: onPressed),
              Button(text: "÷", onPressed: onPressed),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "7", onPressed: onPressed),
              Button(text: "8", onPressed: onPressed),
              Button(text: "9", onPressed: onPressed),
              Button(text: "x", onPressed: onPressed),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "4", onPressed: onPressed),
              Button(text: "5", onPressed: onPressed),
              Button(text: "6", onPressed: onPressed),
              Button(text: "-", onPressed: onPressed),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: "1", onPressed: onPressed),
              Button(text: "2", onPressed: onPressed),
              Button(text: "3", onPressed: onPressed),
              Button(text: "+", onPressed: onPressed),
            ],
          ),
          ButtonRow(
            buttons: [
              Button.big(text: "0", onPressed: onPressed),
              Button(text: ",", onPressed: onPressed),
              Button(text: "=", onPressed: onPressed),
            ],
          ),
        ],
      ),
    );
  }
}
