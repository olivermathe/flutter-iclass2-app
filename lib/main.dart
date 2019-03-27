import 'package:flutter/material.dart';

import 'login-page.dart';
import 'home-page.dart';

import 'components/backgroundImage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Default(child: LogInPage()),
        '/home': (context) => Default(child: HomePage(),)
      },
    );
  }
}

class Default extends StatelessWidget {

  final StatefulWidget child;

  Default({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(72, 131, 205, 1),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundImage(),
          this.child,
        ],
      ),
    );
  }
}

