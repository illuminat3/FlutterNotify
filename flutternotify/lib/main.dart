import 'dart:io';
import 'package:flutter/material.dart';
import 'presentation/app.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:system_tray/system_tray.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isMacOS) {}
  runApp(const App());

  doWhenWindowReady(() {
    const initialSize = Size(460, 640);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.maxSize = initialSize;
    appWindow.show();
  });
}
