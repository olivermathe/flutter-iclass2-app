import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String label;
  final bool obscureText;

  InputField({
    @required this.label,
    this.obscureText = false,
  });

  final _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  );

  final _decoration = (border, label) => InputDecoration(
    enabledBorder: border,
    focusedBorder: border,
    labelText: label,
    labelStyle: TextStyle(
      color: Colors.white30,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: this.obscureText,
        style: TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white30,
        decoration: _decoration(_border, this.label),
      ),
    );
  }
}