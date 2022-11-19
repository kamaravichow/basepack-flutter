import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;

  const BaseButton({
    super.key,
    this.text = 'Button',
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
