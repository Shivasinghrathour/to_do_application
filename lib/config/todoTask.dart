import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String todoName;
  final VoidCallback onTap;
  const TodoItem({
    super.key,
    required this.todoName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          tileColor: Colors.blue[50],
          leading: Icon(
            Icons.add_card,
          ),
          title: Text(
            todoName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.delete,
            ),
          )),
    );
  }
}
