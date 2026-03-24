import 'package:final_exam/models/users_model.dart';
import 'package:final_exam/services/users_service.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatefulWidget {
  final String userId;
  const UserDetail({super.key, required this.userId});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  late Future<UsersModel> userFuture;

  @override
  void initState() {
    super.initState();
    userFuture = UsersService().getUsersbyId(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User")),
      body: FutureBuilder<UsersModel>(
        future: userFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Failed to load user"));
          }

          if (!snapshot.hasData) {
            return const Center(child: Text("No user data"));
          }

          final user = snapshot.data!;
          return Center(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    user.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(user.address),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
