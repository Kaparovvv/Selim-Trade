
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/custom_painter/dialog_custom_painter.dart';
import 'package:selim_trade_app/core/widgets/circle_back_button_widget.dart';

import '../../../../core/exports/export.dart';

class ReviewsDialogWidget extends StatelessWidget {
  const ReviewsDialogWidget({
    super.key,
    required this.author,
    required this.image,
    required this.typeGates,
    required this.reviewsText,
  });

  final String? author;
  final String? image;
  final String? typeGates;
  final String? reviewsText;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CustomPaint(
                  size: Size(
                    context.width * 0.8,
                    context.height * 0.5,
                  ),
                  painter: DialogCustomPainter(),
                ),
              ),
              Positioned(
                bottom: 356,
                right: 253,
                child: SafeArea(
                  child: CachedNetworkImageWidget(
                    imageUrl: image,
                    width: context.width * 0.25,
                    height: context.height * 0.11,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 90,
                bottom: 105,
                right: 14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      author ?? 'unknown',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f16w700,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      typeGates ?? '',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f14w500,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
                left: 14,
                bottom: 14,
                right: 14,
                child: SizedBox(
                  width: context.width * 0.61,
                  child: SingleChildScrollView(
                    child: Text(
                      reviewsText ?? '',
                      style: TextStyleHelper.f14w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const CircleBackButtonWidget(
            color: ThemeHelper.color105BFB,
          ),
        ],
      ),
    );
  }
}