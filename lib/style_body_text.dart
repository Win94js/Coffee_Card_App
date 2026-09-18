import 'package:flutter/material.dart';

class StyleBodyText extends StatelessWidget {
  const StyleBodyText(this.text,{super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),);
  }
}
