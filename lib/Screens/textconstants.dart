import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextConstants{
  TextStyle getPTSansblack(FontWeight weight,double size){
    return TextStyle(
      color:const  Color(0xff000000),
      fontWeight: weight,
      fontSize: size,
      fontFamily: 'PTSans-Regular'
      );
}
  TextStyle getPTSanswhiteItalic(FontWeight weight,double size){
    return TextStyle(
        color:  Colors.white,
        fontWeight: weight,
        fontSize: size,
      fontFamily: 'PTSans-BoldItalic'

    );
  }
//red
  TextStyle getPTSansRed(FontWeight weight,double size){
    return TextStyle(
        color:const  Color(0xff9A0509),
        fontWeight: weight,
        fontSize: size,
      fontFamily: 'PTSans-Regular'
    );
  }
//red
  TextStyle getPTSanswhite(FontWeight weight,double size){
    return TextStyle(
        color:  Colors.white,
        fontWeight: weight,
        fontSize: size,
        fontFamily: 'PTSans-Regular'
    );
  }
}

TextConstants mystyle=TextConstants();
