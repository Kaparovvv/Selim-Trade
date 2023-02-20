import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../exports/export.dart';

class CircleBackButtonWidget extends StatelessWidget {
  const CircleBackButtonWidget({
    super.key,
    required this.color,
    this.radius = 30,
    this.iconSize = 30,
  });
  final Color color;
  final double radius;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: IconButton(
        icon: Icon(
          Icons.close,
          size: iconSize,
          color: ThemeHelper.white,
        ),
        onPressed: () => context.router.pop(),
      ),
    );
  }
}
