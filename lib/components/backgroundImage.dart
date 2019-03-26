import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 360,
          decoration: new BoxDecoration(
            image: new DecorationImage(
//              colorFilter: new ColorFilter.mode(
//                  Colors.black.withOpacity(),
//                  BlendMode.dstATop
//              ),
              image: new AssetImage("assets/image-bkg-2.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );

  }
}