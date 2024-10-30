import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.backgroundColor,
    required this.color,
    required this.borderRadius,
    required this.textColor,
    this.fontSize,
  });
  final Color backgroundColor, color;
  final BorderRadius borderRadius;
  final String textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            textColor,
            style: Styles.textStyle14.copyWith(
                color: color, fontWeight: FontWeight.w900, fontSize: fontSize),
          ),
        ));
  }
}
