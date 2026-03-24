import 'package:final_exam/models/users_model.dart';
import 'package:flutter/material.dart';

class UserFormData {
  final String name;
  final String avatar;
  final String address;

  const UserFormData({
    required this.name,
    required this.avatar,
    required this.address,
  });
}

Future<UserFormData?> showUserFormDialog(
  BuildContext context, {
  UsersModel? initialUser,
}) async {
  return showDialog<UserFormData>(
    context: context,
    builder: (context) {
      return _UserFormDialog(initialUser: initialUser);
    },
  );
}

class _UserFormDialog extends StatefulWidget {
  final UsersModel? initialUser;

  const _UserFormDialog({required this.initialUser});

  @override
  State<_UserFormDialog> createState() => _UserFormDialogState();
}

class _UserFormDialogState extends State<_UserFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _avatarController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialUser?.name ?? "");
    _avatarController = TextEditingController(
      text: widget.initialUser?.avatar ?? "",
    );
    _addressController = TextEditingController(
      text: widget.initialUser?.address ?? "",
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _avatarController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    Navigator.pop(
      context,
      UserFormData(
        name: _nameController.text.trim(),
        avatar: _avatarController.text.trim(),
        address: _addressController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isCreate = widget.initialUser == null;
    return AlertDialog(
      title: Text(isCreate ? "Create User" : "Update User"),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Name"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter name";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _avatarController,
                decoration: const InputDecoration(labelText: "Avatar URL"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter avatar url";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: "Address"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter address";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: Text(isCreate ? "Create" : "Save"),
        ),
      ],
    );
  }
}
