import 'package:flutter/material.dart';
import 'package:midterm/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final TextEditingController _username = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text('Welcome to PM Checker'),
                  TextField(
                    decoration: InputDecoration(hintText: 'Username'),
                    controller: _username,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(username: _username.text),
                        ),
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
