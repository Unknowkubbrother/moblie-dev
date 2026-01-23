import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String name;
  final int? age;

  const DisplayPage({super.key, required this.name, this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  String name = '';
  int? age;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    age = widget.age;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display')),
      body: Column(
        children: [
          Center(child: Text('Name: $name')),
          Center(child: Text('Age: $age')),
          ElevatedButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
