import 'package:flutter/material.dart';

extension TextTheme on BuildContext {
  TextStyle? get head1 => Theme.of(this).textTheme.displayLarge;
  TextStyle? get head2 => Theme.of(this).textTheme.displayMedium;
  TextStyle? get head3 => Theme.of(this).textTheme.displaySmall;
  TextStyle? get bodyXL => Theme.of(this).textTheme.titleMedium;
  TextStyle? get bodyL => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyM => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyS => Theme.of(this).textTheme.bodySmall;
  TextStyle? get bodyXS => Theme.of(this).textTheme.labelSmall;
}
