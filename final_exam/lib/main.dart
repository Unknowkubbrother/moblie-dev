import 'package:final_exam/pages/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginPage(),
    );
  }
}

// icons_launcher:
//   image_path: "assets/picture.png"

//   platforms:
//     android:
//       enable: true
//     ios:
//       enable: true

// <uses-permission android:name="android.permission.INTERNET"/>

// http: ^1.6.0
//   shared_preferences: ^2.5.4
//   icons_launcher: ^3.1.0

// flutter build appbundle 

// dart run icons_launcher:create