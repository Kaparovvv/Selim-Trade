import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[200]!,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 20,
          top: 20,
        ),
        child: Column(
          children: [
            _container(context, context.width, context.height * 0.03),
            const SizedBox(height: 20),
            _container(context, context.width, context.height * 0.1),
            const SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => _container(
                context,
                context.width * 0.8889,
                context.height * 0.2463,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            ),
          ],
        ),
      ),
    );
  }

  Container _container(BuildContext context, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ThemeHelper.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
