import 'package:flutter/material.dart';
// import 'package:wk09/mylist_page.dart';
// import 'package:wk09/bottom_navbar_page.dart';
import 'package:wk09/my_homepage_sharedpref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: "test"),
    );
  }
}
