import 'package:flutter/material.dart';
import 'package:midterm/test.dart';
import 'package:midterm/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData.light(),
      routes: {'/': (context) => Welcome(), '/test': (context) => MyTest()},
      initialRoute: '/',
    );
  }
}
