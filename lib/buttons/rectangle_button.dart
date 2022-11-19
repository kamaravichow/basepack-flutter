import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget leading;
  final Widget trailing;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final double cornerRadius;

  const RectangularButton({
    super.key,
    required this.onPressed,
    this.text = 'Button',
    this.backgroundColor = Colors.blue,
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    this.leading = const SizedBox(),
    this.trailing = const SizedBox(),
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
    this.margin = const EdgeInsets.all(0),
    this.height = 36,
    this.width = double.maxFinite,
    this.cornerRadius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.fastLinearToSlowEaseIn,
      height: height,
      width: width,
      margin: margin,
      child: GestureDetector(
        onTap: (() => onPressed()),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: Container(
            padding: padding,
            color: backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: leading,
                ),
                Expanded(
                  flex: 3,
                  child:
                      Text(text, style: textStyle, textAlign: TextAlign.center),
                ),
                Expanded(
                  flex: 1,
                  child: trailing,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
