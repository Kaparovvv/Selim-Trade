import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/reviews/reviews_dialog_widget.dart';

import '../../../../../core/custom_painter/reviews_box_custom_painter.dart';

class ReviewsBoxWidget extends StatelessWidget {
  const ReviewsBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.width * 0.66,
          height: context.height * 0.18,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CustomPaint(
                  size: Size(
                    context.width * 0.66,
                    context.height * 0.18,
                  ),
                  painter: ReviewsBoxCustomPainter(),
                ),
              ),
              Positioned(
                left: 14.5,
                bottom: 105,
                child: SafeArea(
                  child: CachedNetworkImageWidget(
                    imageUrl: null,
                    width: context.width * 0.155,
                    height: context.height * 0.068,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 9,
                left: 88,
                bottom: 105,
                right: 14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'unknown',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f13w600,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'unknown',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.f11w300,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 64,
                left: 6,
                bottom: 18,
                right: 60,
                child: SizedBox(
                  width: context.width * 0.61,
                  child: Text(
                    'sdlkjcnlsd lsdjcn',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleHelper.f12w400,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 195,
                bottom: 5,
                right: 5,
                child: GestureDetector(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: ThemeHelper.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: ThemeHelper.white20,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      IconHelper.readMore,
                      color: ThemeHelper.color08B89D,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => const ReviewsDialogWidget(
                      author: 'listOfReviews[index]',
                      image: null,
                      typeGates: 'listOfReviews',
                      reviewsText: 'listOfReviews',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
