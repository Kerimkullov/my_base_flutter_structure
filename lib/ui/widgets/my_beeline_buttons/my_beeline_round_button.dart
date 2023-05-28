import 'package:flutter/material.dart';
import 'package:my_beeline/ui/colors/my_beeline_colors.dart';

import 'package:my_beeline/ui/gradients/my_beeline_gradients.dart';
import 'package:my_beeline/ui/typography/font_weights.dart';

class MyBeelineRoundButton extends StatelessWidget {
  const MyBeelineRoundButton({
    super.key,
    this.icon = const SizedBox(),
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.loading = false,
    this.width,
    this.gradient = MyBeelineGradients.gradientBlue,
    this.backgroundColor,
    this.active = true,
  });

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Widget icon;
  final double? width;
  final Gradient? gradient;
  final bool loading;
  final bool active;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: active ? onPressed : null,
      child: Container(
        margin: const EdgeInsets.all(3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: gradient,
          borderRadius: BorderRadius.circular(4),
        ),
        height: 32,
        width: width,
        child: loading
            ? const SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: MyBeelineColors.positiveSuccess,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  if (icon is SizedBox)
                    const SizedBox()
                  else
                    const SizedBox(
                      width: 5,
                    ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: textColor,
                          fontSize: 10,
                          fontWeight: BeelineFontWeights.semiBold,
                        ),
                  ),
                ],
              ),
      ),
    );
  }
}
