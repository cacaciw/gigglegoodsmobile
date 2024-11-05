import 'package:flutter/material.dart';
import 'package:gigglegoods/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GiggleGoods',
      theme: ThemeData(
        primarySwatch: Colors.grey, // Closest MaterialColor to black
        primaryColor: Colors.black, // Sets the primary color to black
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
