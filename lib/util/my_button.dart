import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      focusColor: Colors.blue,
      hoverColor: Colors.brown,
      onPressed: onPressed,
      color: Colors.brown,
      child: Text(text,style: TextStyle(color: Colors.white),),
    );
  }
}
