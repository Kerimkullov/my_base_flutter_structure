import 'package:flutter/material.dart';
import 'package:my_beeline/ui/typography/my_beeline_text_style.dart';

abstract class MyBeelineDarkTheme {
  // Example of creating themes in app
  static ThemeData get theme => ThemeData(
        primaryColor: Colors.white,
        colorScheme: const ColorScheme.dark(),
        textTheme: TextTheme(
          displayLarge: MyBeelineTextStyle.head1,
          displayMedium: MyBeelineTextStyle.head2,
          displaySmall: MyBeelineTextStyle.head3,
          titleMedium: MyBeelineTextStyle.bodyXL,
          bodyLarge: MyBeelineTextStyle.bodyL,
          bodyMedium: MyBeelineTextStyle.bodyM,
          bodySmall: MyBeelineTextStyle.bodyS,
          labelSmall: MyBeelineTextStyle.bodyXS,
        ),
      );
}
