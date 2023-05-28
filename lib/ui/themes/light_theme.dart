import 'package:flutter/material.dart';
import 'package:my_beeline/ui/colors/my_beeline_colors.dart';
import 'package:my_beeline/ui/typography/my_beeline_text_style.dart';

abstract class MyBeelineLightTheme {
  // Example of creating themes in app
  static ThemeData get theme => ThemeData(
        colorScheme:
            const ColorScheme.light(primary: MyBeelineColors.positiveSuccess),

        primaryColor: MyBeelineColors.positiveSuccess,

        scaffoldBackgroundColor: MyBeelineColors.positiveSuccess,

        textSelectionTheme: const TextSelectionThemeData(
            // selectionHandleColor: MyBeelineColors.placeHolder,
            // selectionColor: MyBeelineColors.placeHolder,
            // cursorColor: MyBeelineColors.placeHolder,
            ),
        // inputDecorationTheme: _inputDecorationTheme,
        outlinedButtonTheme: const OutlinedButtonThemeData(),
        textButtonTheme: const TextButtonThemeData(),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(),
        ),
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
