import 'package:flutter/material.dart';
import 'package:mitchkoko/util/my_button.dart'; 

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  
  DialogBox({
    super.key, 
    required this.controller, 
    required this.onSave, 
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //text field
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),

            //buttons -> save + cancel
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(text: "Save", onPressed: onSave),
                  const SizedBox(width: 4),
                  MyButton(
                    text: "Cancel",
                    onPressed: onCancel
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}