import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const darkColor = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operationColor = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) onPressed;

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = defaultColor,
    required this.onPressed,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = defaultColor,
    required this.onPressed,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = operationColor,
    required this.onPressed,
  });

  static const _textStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w200,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () => onPressed(text),
        child: Text(text, style: _textStyle),
      ),
    );
  }
}
