import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:shimmer/shimmer.dart';

class ServiceLoadingWidget extends StatelessWidget {
  const ServiceLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[200]!,
      child: Column(
        children: [
          _container(context.width, context.height * 0.25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _container(context.width, context.height * 0.3),
                const SizedBox(height: 20),
                _container(context.width * 0.3, context.height * 0.03),
                const SizedBox(height: 5),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemBuilder: (context, index) => _container(
                context.width * 0.7972,
                context.height * 0.2118,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 15),
            ),
          ),
        ],
      ),
    );
  }

  Container _container(double width, double height) {
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
