import 'package:flutter/material.dart';

class DefaultTheme {
  static ThemeData get defaultTheme {
    return light;
  }

  static ThemeData get dark {
    return ThemeData.dark();
  }

  static ThemeData get light {
    ColorScheme customLightColorScheme = const ColorScheme.light().copyWith(
      onPrimary: const ColorScheme.light().primary.withOpacity(0.5),
    );

    return ThemeData.from(colorScheme: customLightColorScheme);
  }
}
