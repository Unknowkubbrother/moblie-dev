import 'package:final_exam/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:final_exam/services/auth_storage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameCon = TextEditingController();
  final storage = AuthStorage();

  Future<void> login() async {
    await storage.saveToken(usernameCon.text);

    final logged = await storage.isLooggedIn();

    if (!mounted) return;

    if (!logged) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHome()),
    );
  }

  @override
  void initState() {
    super.initState();
    usernameCon.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign IN")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign In'),
              SizedBox(height: 16),
              TextField(
                controller: usernameCon,
                decoration: InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: login, child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
