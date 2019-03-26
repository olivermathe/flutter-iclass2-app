import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
          width: 120,
          image: AssetImage("assets/logo.png")
      ),
    );
  }
}