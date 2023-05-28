import 'package:flutter/material.dart';

abstract class MyBeelineColors {
  /// Alert & Status
  static const positiveSuccess = Color(0XFF00B48E);
  static const info = Color(0xFF1081E8);
  static const warningCaution = Color(0xFFFF7B24);
  static const errorCritical = Color(0xFFFF4141);
  static const mute = Color(0xFFE6E8E9);
  static const placeHolder = Color(0xFF879AC1);
  static const successLight = Color(0xFFA2CFBD);
  static const successLightAlert = Color(0xFFE4FBF6);
  static const greyScale = Color(0xFF011727);
  static const infoLight = Color(0xFFE1F2FF);
  static const warningCautionLight = Color(0xFFFFE3D1);
  static const errorCriticalLight = Color(0xFFFFE3E3);

  /// Primary
  static const MaterialColor primary = MaterialColor(
    0XFF343434,
    <int, Color>{
      50: Color(0xff7b90a0), //10%
      100: Color(0xff6f8697), //20%
      200: Color(0xff577286), //30%
      300: Color(0xff3f5d75), //40%
      400: Color(0xff274963), //50%
      500: Color(0xff0f3552), //60%
      600: Color(0xff0d304a), //70%
      700: Color(0xff0c2a42), //80%
      800: Color(0xff0a2539), //90%
      900: Color(0xff092031), //100%
    },
  );

  /// Secondary
  static const secondaryColor = Color(0XFFFFB902);

  /// Tertiary
  static const tertiaryColor = Color(0XFFCAE8F6);

  /// @temp: Text colors
  static const appBarTextColors = Color(0xff0F2851);
  static const titleColors = Color(0xff21538D);

  /// @temp: extra background
  static const extraBackgroundColor = Color(0xff000000);
  static const titleBackgroundColor = Color(0xffFBFCFE);

  /// Auth icon inactive color
  static const inactiveAuthIcon = Color(0xff919FBF);

  /// Auth icon inactive color
  static const alertMute = Color(0xffC5CCDB);
}
