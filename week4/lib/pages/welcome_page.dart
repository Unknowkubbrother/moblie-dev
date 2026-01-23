import 'package:flutter/material.dart';
import 'package:week4/pages/about_page.dart';
import 'package:week4/pages/display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = 'Enter your name';
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _output = 'Enter your name';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AboutPage()),
              // );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _output = 'Hello, ${_controller.text}';
                });
              },
              child: Text('Submit'),
            ),

            Text(_output),
            Text(_controller.text),

            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  String name = _output;
                  int age = 18;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPage(name: name, age: age),
                    ),
                  );
                }
              },
              child: Text('Display'),
            ),
          ],
        ),
      ),
    );
  }
}
