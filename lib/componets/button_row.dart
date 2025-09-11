import 'package:calculator/componets/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  final bool bigButton;
  const ButtonRow({super.key, required this.buttons, this.bigButton = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
        
      ),
    );
  }
}
