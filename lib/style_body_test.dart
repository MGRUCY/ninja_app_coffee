import 'package:flutter/material.dart';

class StyleBodyTest extends StatelessWidget {
  const StyleBodyTest(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(
        color: Colors.brown,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
