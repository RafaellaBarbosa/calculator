import 'package:flutter/material.dart';

import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPressed;

  const Keyboard(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(
              text: 'AC',
              color: Button.darkColor,
              onPressed: onPressed,
            ),
            Button(text: '%', color: Button.darkColor, onPressed: onPressed),
            Button.operation(text: '/', onPressed: onPressed),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', onPressed: onPressed),
            Button(text: '8', onPressed: onPressed),
            Button(text: '9', onPressed: onPressed),
            Button.operation(text: 'x', onPressed: onPressed),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', onPressed: onPressed),
            Button(text: '5', onPressed: onPressed),
            Button(text: '6', onPressed: onPressed),
            Button.operation(text: '-', onPressed: onPressed),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', onPressed: onPressed),
            Button(text: '2', onPressed: onPressed),
            Button(text: '3', onPressed: onPressed),
            Button.operation(text: '+', onPressed: onPressed),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', onPressed: onPressed),
            Button(text: '.', onPressed: onPressed),
            Button.operation(text: '=', onPressed: onPressed),
          ]),
        ],
      ),
    );
  }
}
