import 'package:english_vocab_app_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomHeadingText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const CustomHeadingText({super.key,
    required this.text,
    this.fontSize = 28,
    this.color = kBlackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'JosefinSans',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
