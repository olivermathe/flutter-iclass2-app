import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;

  Button({@required this.text,});

  final _shape = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
        Radius.circular(10)
    ),
  );

  final _text = (text) => Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        fillColor: Color.fromRGBO(72, 131, 205, 80),
        shape: _shape,
        constraints: BoxConstraints(
          minHeight: 60,
          minWidth: double.infinity,
        ),
        onPressed: () {},
        child: _text(this.text),
      ),
    );
  }

}