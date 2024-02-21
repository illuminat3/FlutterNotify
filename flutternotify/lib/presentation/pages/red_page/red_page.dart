import 'package:flutter/material.dart';
import 'widgets/red_page_text.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RedPageText("a"),
        RedPageText("b"),
        RedPageText("c"),
      ],
    );
  }
}
