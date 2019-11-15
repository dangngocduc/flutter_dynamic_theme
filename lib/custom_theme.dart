import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTheme {
  Color colorStatus1;
  Color colorStatus2;

  CustomTheme({this.colorStatus1, this.colorStatus2});

  factory CustomTheme.dark() {
    return CustomTheme(colorStatus1: Colors.red, colorStatus2: Colors.blue);
  }

  factory CustomTheme.light() {
    return CustomTheme(colorStatus1: Colors.pink, colorStatus2: Colors.green);
  }

}