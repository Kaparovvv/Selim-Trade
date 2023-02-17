import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.reviewsOurClients,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 28),
        Stack(
          children: [
            SizedBox(
              width: width * 0.66,
              height: height * 0.18,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(width * 0.66, height * 0.18),
                    painter: RPSCustomPainter(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14.5,
                    bottom: 105,
                    child: SafeArea(
                      child: CachedNetworkImageWidget(
                        imageUrl:
                            'https://www.peoples.ru/character/movie/loki/loki_2.jpg',
                        width: width * 0.155,
                        height: height * 0.068,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(0, 0);
    path0.quadraticBezierTo(
        size.width * 0.0317427, 0, size.width * 0.0423237, 0);
    path0.cubicTo(
        size.width * 0.0814938,
        size.height * 0.0000667,
        size.width * 0.0543568,
        size.height * 0.1009333,
        size.width * 0.0583402,
        size.height * 0.1346000);
    path0.cubicTo(
        size.width * 0.0419917,
        size.height * 0.4044000,
        size.width * 0.3046058,
        size.height * 0.3892000,
        size.width * 0.2916598,
        size.height * 0.1358000);
    path0.cubicTo(
        size.width * 0.2954668,
        size.height * 0.1018500,
        size.width * 0.2625726,
        size.height * -0.0002000,
        size.width * 0.3068880,
        0);
    path0.quadraticBezierTo(size.width * 0.4801660, 0, size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
