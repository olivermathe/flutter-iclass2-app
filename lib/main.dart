import 'package:flutter/material.dart';

import 'login-page.dart';
import 'components/backgroundImage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Color.fromRGBO(72, 131, 205, 1),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BackgroundImage(),
            LogInPage(),
          ],
        ),
      ),
    );
  }
}
