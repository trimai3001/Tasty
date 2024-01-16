import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MaterialApp(title: 'Tasty', home: SafeArea(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
