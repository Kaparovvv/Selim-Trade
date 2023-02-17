import 'package:flutter/material.dart';

import '../../../../core/exports/export.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomOutlinedButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 10,
        ),
        elevation: 0,
        side: const BorderSide(
          color: ThemeHelper.color105BFB,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: TextStyleHelper.f12w400,
      ),
    );
  }
}
