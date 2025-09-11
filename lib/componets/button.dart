import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const def = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool isBigButton;
  final Color color;
  final void Function(String)? onPressed;

  const Button({
    super.key,
    required this.text,
    this.isBigButton = false,
    this.color = def,
    this.onPressed,
  });

  const Button.big({
    super.key,
    required this.text,
    this.isBigButton = true,
    this.color = def,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBigButton ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          textStyle: const TextStyle(fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => onPressed?.call(text),
        child: Text(text),
      ),
    );
  }
}
