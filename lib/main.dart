import 'package:betaplay/screens/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MediaQuery(
      data: MediaQueryData.fromWindow(ui.window),
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: App(),
      )));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Shortcuts(shortcuts: <LogicalKeySet, Intent>{
      LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent()
    }, child: const MaterialApp(home: Auth()));
  }
}
