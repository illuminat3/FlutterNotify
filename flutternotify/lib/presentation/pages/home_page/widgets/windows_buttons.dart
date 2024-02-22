import 'package:flutter/material.dart';
import 'minimize_window_button.dart';
import 'close_window_button.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinWindowButton(),
        ClsWindowButton(),
      ],
    );
  }
}
