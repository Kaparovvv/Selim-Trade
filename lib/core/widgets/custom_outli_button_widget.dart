import 'package:flutter/material.dart';

import '../exports/export.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double height;
  final TextStyle textStyle;
  final double radius;
  const CustomOutlinedButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.height = 14,
    this.textStyle = TextStyleHelper.f12w400,
    this.radius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: height,
          horizontal: 10,
        ),
        elevation: 0,
        side: const BorderSide(
          color: ThemeHelper.color105BFB,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
