import 'package:flutter/material.dart';
import 'package:todo_1/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            //!get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              hintText: "Tambahkan catatan baru"
              ),
            ),

            //!buttons -> save button & cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              //save button
              MyButton(text: "Simpan", onPressed: onSave),

              const SizedBox(width: 8,),

              // cancel button
              MyButton(text: "Batal", onPressed: onCancel)
            ],)
          ],),

      ),
    );
  }
}