import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;

  CustomDialog(
    this.title,
    this.content,
    this.callback,
  );
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      content: Text(content, style: TextStyle(color: Colors.black)),
      actions: <Widget>[
        TextButton(
          onPressed: callback,
          child: Text(
            "RESET",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
