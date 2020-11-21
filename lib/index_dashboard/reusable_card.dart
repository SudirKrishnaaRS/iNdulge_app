import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColour; // COLOR VARIABLE DECLARATION   (DATATYPE IS COLOR)
  final Widget cardChild;  // WIDGET VARIABLE DECLARATION (DATATYPE IS WIDGET)
  final Function onPress;
  ReusableCard({@required this.cardColour, this.cardChild,this.onPress}); // * CONSTRUCTOR  |   @required means always accepts an argument

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        child: cardChild,
        //color: Color(0xFF1D1E33),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColour,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Color(0xFF1f4261),),
        ),
      ),
    );
  }
}