import 'package:flutter/material.dart';

class UserListItemActions extends StatelessWidget {
  final VoidCallback onView;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const UserListItemActions({
    super.key,
    required this.onView,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          tooltip: "View",
          onPressed: onView,
          icon: const Icon(Icons.arrow_forward_ios),
        ),
        IconButton(
          tooltip: "Edit",
          onPressed: onEdit,
          icon: const Icon(Icons.edit),
        ),
        IconButton(
          tooltip: "Delete",
          onPressed: onDelete,
          icon: const Icon(Icons.delete, color: Colors.red),
        ),
      ],
    );
  }
}
