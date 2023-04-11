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
            Container(
              width: context.width,
              height: context.height * 0.03,
              decoration: BoxDecoration(
                color: ThemeHelper.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: context.width,
              height: context.height * 0.1,
              decoration: BoxDecoration(
                color: ThemeHelper.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  width: context.width * 0.8889,
                  height: context.height * 0.2463,
                  decoration: BoxDecoration(
                    color: ThemeHelper.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
