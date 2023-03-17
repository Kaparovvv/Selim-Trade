import 'package:flutter/material.dart';

import '../../../../core/exports/export.dart';

class ScrollButtonWidget extends StatelessWidget {
  final String icon;
  final Function() onPressed;
  final Color iconTheme;
  const ScrollButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.iconTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.11,
      height: context.height * 0.05,
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
          color: iconTheme,
        ),
      ),
    );
  }
}
