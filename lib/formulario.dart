import 'package:flutter/material.dart';

class PageForm extends StatefulWidget {
  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: "Nombre"),
        ),
        ],
      ),
    );
  }
}