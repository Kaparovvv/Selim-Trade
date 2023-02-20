import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/circle_back_button_widget.dart';

import '../custom_painter/dialog_custom_painter.dart';
import '../exports/export.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
    required this.phone,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  final String? phone;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.8,
      height: height * 0.5,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.topRight,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
              child: CustomPaint(
                size: Size(
                  width * 0.8,
                  height * 0.5,
                ),
                painter: DialogCustomPainter(),
              ),
            ),
            Positioned(
              bottom: 365,
              right: 255,
              child: SafeArea(
                child: CircleBackButtonWidget(
                  color: ThemeHelper.color5061FF.withOpacity(0.8),
                  radius: 40,
                  iconSize: 35,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 80,
              child: Image.asset(
                IconHelper.blueLogo,
                width: 100,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 120,
              right: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textButton(TextHelper.main, () {}),
                  const SizedBox(height: 5),
                  textButton(TextHelper.service, () {}),
                  const SizedBox(height: 5),
                  textButton(TextHelper.news, () {}),
                  const SizedBox(height: 5),
                  textButton(TextHelper.ourWorks, () {}),
                  const SizedBox(height: 20),
                  Text(
                    TextHelper.city,
                    style: TextStyleHelper.f16w700
                        .copyWith(color: ThemeHelper.color001645),
                  ),
                  const SizedBox(height: 5),
                  Material(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const ImageIcon(
                            AssetImage(IconHelper.call),
                            size: 15,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            phone ?? '',
                            style: TextStyleHelper.f14w600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textButton(String text, Function() onPressed) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: TextStyleHelper.f18w500.copyWith(color: ThemeHelper.color001645),
      ),
    );
  }
}
