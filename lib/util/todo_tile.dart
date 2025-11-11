import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final VoidCallback onDelete;
  

  const TodoTile({super.key, 
  required this.taskName, 
  required this.taskCompleted, 
  required this.onChanged,
  required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 12.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                onDelete();
              },
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(children: [
            Checkbox(value: taskCompleted, onChanged: onChanged,
            activeColor: Colors.black,
            ),
        
            Text(
              taskName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                decoration: taskCompleted ? TextDecoration.lineThrough : null,
              ),
            )
          ],),
        ),
      ),
    );
  }
}