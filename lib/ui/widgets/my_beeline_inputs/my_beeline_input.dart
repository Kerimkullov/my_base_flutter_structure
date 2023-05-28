import 'package:flutter/material.dart';
import 'package:my_beeline/ui/colors/my_beeline_colors.dart';
import 'package:my_beeline/ui/typography/font_weights.dart';

class MyBeelineInput extends StatelessWidget {
  const MyBeelineInput({
    super.key,
    this.suffixIcon = const SizedBox(),
    this.prefixIcon = const SizedBox(),
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.initialValue,
    this.borderRadius = 4,
    required this.inputAction,
    required this.controller,
    this.errorText,
    required this.onChanged,
    required this.validate,
    this.maxLines,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength = 100,
    required this.focusNode,
    this.showLabel = true,
    this.textCapitalization = TextCapitalization.words,
  });

  final Widget suffixIcon;
  final Widget prefixIcon;
  final String hintText;
  final void Function(String value) onChanged;
  final String? Function(String? value) validate;
  final TextEditingController? controller;
  final TextInputAction inputAction;
  final double borderRadius;
  final TextInputType textInputType;
  final int? maxLines;
  final void Function(String)? onFieldSubmitted;
  final bool obscureText;
  final bool enabled;
  final String? errorText;
  final FocusNode? focusNode;
  final int maxLength;
  final String? initialValue;
  final TextCapitalization textCapitalization;
  final bool showLabel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FocusScope(
          child: Focus(
            child: TextFormField(
              textCapitalization: textCapitalization,
              initialValue: initialValue,
              enabled: enabled,
              focusNode: focusNode,
              maxLength: maxLength,
              keyboardType: textInputType,
              controller: controller,
              textInputAction: inputAction,
              textAlign: TextAlign.left,
              obscureText: obscureText,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: BeelineFontWeights.semiBold,
                    color: MyBeelineColors.primary,
                  ),
              decoration: InputDecoration(
                counterText: '',
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: MyBeelineColors.placeHolder, width: 0.5),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                counterStyle: const TextStyle(fontSize: 0),
                errorText: errorText,
                errorStyle: const TextStyle(height: 0),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: MyBeelineColors.errorCritical,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: MyBeelineColors.errorCritical,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: MyBeelineColors.placeHolder, width: 0.5),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: MyBeelineColors.info, width: 0.5),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                filled: true,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: BeelineFontWeights.semiBold,
                      color: MyBeelineColors.placeHolder,
                    ),
                fillColor: Colors.white,
                prefixIconConstraints: const BoxConstraints(),
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: suffixIcon,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: prefixIcon,
                ),
              ),
              validator: validate,
              onChanged: onChanged,
              onFieldSubmitted: onFieldSubmitted,
              cursorHeight: 25,
            ),
          ),
        ),
      ],
    );
  }
}
