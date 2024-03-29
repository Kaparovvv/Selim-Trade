import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../exports/export.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.controller,
    this.keyboardType,
    this.maxLines,
    required this.hinText,
    this.validate,
    this.inputFormatters,
    this.textCapitalization,
    required this.focusNode,
  }) : super(key: key);

  final FormFieldValidator<String>? validate;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String hinText;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      style: TextStyleHelper.f14w600.copyWith(
        decorationThickness: 0,
      ),
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: TextStyleHelper.f14w500,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.color414141),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
      ),
      validator: validate,
      inputFormatters: inputFormatters,
    );
  }
}
