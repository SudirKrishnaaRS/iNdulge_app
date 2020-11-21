import 'package:flutter/material.dart';

const kLabelTextStyle=TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData iconSym;
  final String textFld;

  IconContent({this.iconSym, this.textFld});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconSym,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text("$textFld",
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}