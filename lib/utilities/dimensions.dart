import 'package:flutter/material.dart';

class AppDimension {
  static height(context) =>
      MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
          ? MediaQuery.of(context).size.height
          : MediaQuery.of(context).size.width;
  static width(context) =>
      MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height;
}
