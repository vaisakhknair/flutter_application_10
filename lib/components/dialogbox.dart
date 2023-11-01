import 'package:flutter/material.dart';
import 'package:flutter_application_10/components/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new Task"),
            ),

            //buttons => Save, Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save button
                Buttons(text: "Save", onpressed: onSave),

                const SizedBox(
                  width: 8,
                ),

                //Cancel button
                Buttons(text: "Cancel", onpressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
