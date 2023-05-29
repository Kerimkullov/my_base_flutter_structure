import 'package:flutter/material.dart';
import 'package:my_beeline/l10n/l10n.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.l10n.appTitle);
  }
}
