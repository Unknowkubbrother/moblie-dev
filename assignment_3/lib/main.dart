import 'package:assignment_3/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment_3/pages/history_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: const MyHomePage(),

      routes: {'/history': (context) => const MyHistoryPage()},
    );
  }
}
