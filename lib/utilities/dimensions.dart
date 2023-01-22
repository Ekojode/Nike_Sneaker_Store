import 'package:flutter/material.dart';

class AppDimension {
  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;
  static EdgeInsets padding(context) =>
      EdgeInsets.symmetric(horizontal: width(context) * 0.05, vertical: 10);
}
