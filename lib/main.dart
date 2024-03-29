import 'package:flutter/material.dart';
import 'package:popupmenu_button_updated/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopUp Menu Button',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

