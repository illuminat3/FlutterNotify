import 'package:flutter/material.dart';

class RedPageText extends StatelessWidget {
  final String text;
  const RedPageText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
