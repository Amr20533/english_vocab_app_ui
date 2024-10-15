import 'package:english_vocab_app_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomSubTitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const CustomSubTitleText({super.key,
    required this.text,
    this.fontSize = 14,
    this.color = kGreyColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'JosefinSans',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
