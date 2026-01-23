import 'package:assignment_1/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:assignment_1/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 1',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        primaryColor: primaryColor,
        fontFamily: 'Prompt',
      ),
      home: Home(),
    );
  }
}
