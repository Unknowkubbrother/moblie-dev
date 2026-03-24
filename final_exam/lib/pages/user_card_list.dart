import 'package:final_exam/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:final_exam/services/users_service.dart';
import 'package:final_exam/pages/user_detail.dart';
import 'package:final_exam/components/user_form_dialog.dart';
import 'package:final_exam/components/user_list_item_actions.dart';

class UserCardList extends StatefulWidget {
  const UserCardList({super.key});

  @override
  State<UserCardList> createState() => _UserCardListState();
}

class _UserCardListState extends State<UserCardList> {
  final UsersService _usersService = UsersService();
  List<UsersModel> users = [];
  bool isLoading = true;

  Future<void> getUsers() async {
    try {
      final response = await _usersService.getUsers();

      if (!mounted) return;

      setState(() {
        users = response;
        isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        isLoading = false;
      });
      debugPrint(e.toString());
    }
  }

  Future<void> _createUser() async {
    final formData = await showUserFormDialog(context);
    if (formData == null) return;

    try {
      await _usersService.createUser(
        name: formData.name,
        avatar: formData.avatar,
        address: formData.address,
      );
      await getUsers();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Create user failed")));
    }
  }

  Future<void> _updateUser(UsersModel user) async {
    final formData = await showUserFormDialog(context, initialUser: user);
    if (formData == null) return;

    try {
      await _usersService.updateUser(
        id: user.id,
        name: formData.name,
        avatar: formData.avatar,
        address: formData.address,
      );
      await getUsers();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Update user failed")));
    }
  }

  Future<void> _deleteUser(UsersModel user) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete user"),
        content: Text("Delete ${user.name}?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Delete"),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      await _usersService.deleteUser(user.id);
      await getUsers();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Delete user failed")));
    }
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: _createUser,
            icon: const Icon(Icons.add),
            label: const Text("Add user (POST)"),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, idx) => Card(
              child: ListTile(
                title: Text(users[idx].name),
                leading: CircleAvatar(
                  backgroundImage: Image.network(users[idx].avatar).image,
                ),
                subtitle: Text(users[idx].address),
                trailing: UserListItemActions(
                  onView: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetail(userId: users[idx].id),
                      ),
                    );
                  },
                  onEdit: () => _updateUser(users[idx]),
                  onDelete: () => _deleteUser(users[idx]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
