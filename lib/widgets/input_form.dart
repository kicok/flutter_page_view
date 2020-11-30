import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String username;
  final String hintText;
  final IconData icon;

  InputForm(this.username, this.hintText, this.icon);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.deepOrangeAccent,
        ),
        labelText: username,
        labelStyle: TextStyle(color: Colors.deepOrangeAccent),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.deepOrangeAccent),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrangeAccent),
        ),
        filled: true,
        fillColor: Colors.amberAccent[100],
      ),
    );
  }
}
