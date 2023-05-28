import 'package:flutter/material.dart';

abstract class MyBeelineElevation {
  // Example of creating elevations
  static const smallDark = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    blurRadius: 15, // soften the shadow
    offset: Offset(
      0, // Move to right 0  horizontally
      4, // Move to bottom 4 Vertically
    ),
  );
}
