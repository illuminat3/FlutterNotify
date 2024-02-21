import 'package:flutter/material.dart';
import 'themes/default/default_theme.dart'; // Dark theme also exists at 'themes/dark_theme.dart'
import 'pages/home_page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme.theme,
      home: const HomePage(),
    );
  }
}
