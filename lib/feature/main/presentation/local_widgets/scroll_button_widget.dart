import 'package:flutter/material.dart';

import '../../../../core/exports/export.dart';

class ScrollButtonWidget extends StatelessWidget {
  final String icon;
  final Function() onPressed;
  const ScrollButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.11,
      height: height * 0.05,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(14),
          backgroundColor: ThemeHelper.color414141.withOpacity(0.15),
          side: const BorderSide(
            color: ThemeHelper.colorF1F6FF,
            width: 3,
          ),
          shape: const CircleBorder(),
        ),
        child: ImageIcon(
          AssetImage(icon),
          color: ThemeHelper.color105BFB,
        ),
      ),
    );
  }
}
