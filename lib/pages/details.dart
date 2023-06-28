import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list_flutter/data/database.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, this.model});
  //db
  ToDoDataBase? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "To-Do List Details",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      // body: Column(children: [Text('${model!.toDoList}')],),
    );
  }
}
