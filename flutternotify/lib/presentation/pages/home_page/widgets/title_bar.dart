import 'package:flutter/material.dart';
import 'windows_buttons.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          Expanded(child: MoveWindow()),
          const WindowButtons(),
        ],
      ),
    );
  }
}
