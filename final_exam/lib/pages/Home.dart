import 'package:final_exam/pages/user_card_list.dart';
import 'package:flutter/material.dart';
import 'package:final_exam/services/auth_storage.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String? username;
  final storage = AuthStorage();

  Future<void> getUsername() async {
    try {
      if (!mounted) return;

      final token = await storage.getToken();
      if (!mounted) return;

      setState(() {
        username = (token != null && token.trim().isNotEmpty) ? token : null;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Users by Admin ${username ?? '-'}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(child: UserCardList()),
          ],
        ),
      ),
    );
  }
}
