import 'dart:io';
import 'package:flutter/material.dart';
import 'presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isMacOS) {}
  runApp(const App());
}
