import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/commons/theme_helper.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 3),
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[200]!,
      child: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: ThemeHelper.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}
