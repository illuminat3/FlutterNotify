import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import '../../../themes/default/theme.dart';

class MinWindowButton extends WindowButton {
  MinWindowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final windowButtonColors = WindowButtonColors(
      iconNormal: DefaultTheme.defaultTheme.colorScheme.onSurface,
      mouseOver: DefaultTheme.defaultTheme.colorScheme.onPrimary,
      mouseDown: DefaultTheme.defaultTheme.colorScheme.primary,
    );

    return WindowButton(
      colors: windowButtonColors,
      iconBuilder: (buttonContext) =>
          MinimizeIcon(color: buttonContext.iconColor),
      onPressed: appWindow.hide,
    );
  }
}
