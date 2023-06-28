import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final TextEditingController controller;
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    // return AlertDialog(
    //   backgroundColor: Colors.brown[300],
    //   content: Container(
    //     height: 100,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         // get user input
    //         TextField(
    //           controller: controller,
    //           decoration: InputDecoration(
    //             border: OutlineInputBorder(),
    //             hintText: "Add a new task",
    //           ),
    //         ),

    //         // buttons -> save + cancel
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.end,
    //           children: [
    //             // save button
    //             MyButton(text: "Save", onPressed: onSave),

    //             const SizedBox(width: 8),

    //             // cancel button
    //      MyButton(text: "Cancel", onPressed: onCancel),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return AlertDialog(
      scrollable: true,
      title: const Text(
        'New Task',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.brown),
      ),
      content: SizedBox(
        height: height * 0.30,
        width: width,
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: controller,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  hintText: 'Task',
                  hintStyle: const TextStyle(fontSize: 14),
                  icon: const Icon(CupertinoIcons.square_list,
                      color: Colors.brown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              // TextFormField(
              //   controller: descontroller,
              //   keyboardType: TextInputType.multiline,
              //   maxLines: null,
              //   style: const TextStyle(fontSize: 14),
              //   decoration: InputDecoration(
              //     contentPadding: const EdgeInsets.symmetric(
              //       horizontal: 20,
              //       vertical: 20,
              //     ),
              //     hintText: 'Description',
              //     hintStyle: const TextStyle(fontSize: 14),
              //     icon: const Icon(CupertinoIcons.bubble_left_bubble_right,
              //         color: Colors.brown),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      actions: [
        MyButton(text: "Cancel", onPressed: onCancel),
        MyButton(text: "Save", onPressed: onSave),
      ],
    );
  }
}
