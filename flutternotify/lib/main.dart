import 'dart:io';
import 'package:flutter/material.dart';
import 'presentation/app.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:system_tray/system_tray.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final systemTray = SystemTray();
  final Menu menu = Menu();

  await systemTray.initSystemTray(
    iconPath: getTrayImagePath('chatwoot-logo'),
  );

  await menu.buildFrom([
    MenuItemLabel(label: "Show", onClicked: (menuItem) => appWindow.show()),
    MenuItemLabel(label: "Hide", onClicked: (menuItem) => appWindow.hide()),
    MenuItemLabel(label: "Exit", onClicked: (menuItem) => exit(0))
  ]);

  await systemTray.setContextMenu(menu);

  systemTray.registerSystemTrayEventHandler((eventName) {
    debugPrint("eventName: $eventName");
    if (eventName == kSystemTrayEventClick) {
      appWindow.show();
    } else if (eventName == kSystemTrayEventRightClick) {
      systemTray.popUpContextMenu();
    }
  });

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

String getTrayImagePath(String imageName) {
  return Platform.isWindows ? 'assets/$imageName.ico' : 'assets/$imageName.png';
}
