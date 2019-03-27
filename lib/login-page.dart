import 'package:flutter/material.dart';

import 'components/button.dart';
import 'components/logoImage.dart';
import 'components/inputField.dart';

class LogInPage extends StatefulWidget {

  @override
  _LogInPageState createState() => _LogInPageState();

}

class _LogInPageState extends State<LogInPage> {

  final _pageHeader = Expanded(
    flex: 2,
    child: Container(
      child: LogoImage(),
    ),
  );

  final _pageForm = (context) => Expanded(
    flex: 3,
    child: Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputField(label: 'Nickname'),
            SizedBox(height: 20,),
            InputField(label: 'Password', obscureText: true,),
            SizedBox(height: 30,),
            Button(
              text: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            )
          ],
        ),
      ),
    ),
  );

  Expanded _flexSpace (int flex) => Expanded(
    flex: flex,
    child: Container(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color.fromRGBO(55, 82, 97, .83),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _pageHeader,
            _pageForm(context),
            _flexSpace(1),
          ],
        ),
      ),
    );
  }
}
