import 'package:flutter/material.dart';
import 'package:week4/pages/welcome_page.dart';
import 'package:week4/pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => WelcomePage(),
        '/about': (context) => AboutPage(),
      },
      initialRoute: '/',
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}
