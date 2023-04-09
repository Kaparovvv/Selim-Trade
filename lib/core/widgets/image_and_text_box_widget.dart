import 'package:flutter/material.dart';

import '../exports/export.dart';

class ImageAndTextBoxWidget extends StatelessWidget {
  const ImageAndTextBoxWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageUrl,
    required this.title,
    this.isTextWithBackground = true,
    this.boxShadow,
    required this.alignment,
    this.radius = 12,
    this.margin,
    required this.onTap,
  }) : super(key: key);

  final String? imageUrl;
  final double width;
  final double height;
  final String? title;
  final bool isTextWithBackground;
  final BoxShadow? boxShadow;
  final AlignmentGeometry alignment;
  final double radius;
  final EdgeInsets? margin;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: alignment,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                boxShadow ?? const BoxShadow(),
              ],
            ),
            child: CachedNetworkImageWidget(
              imageUrl: imageUrl,
              width: width,
              height: height,
              radius: BorderRadius.circular(radius),
            ),
          ),
          title != null
              ? isTextWithBackground
                  ? Container(
                      margin: const EdgeInsets.only(
                        left: 6,
                        bottom: 6,
                        right: 6,
                        top: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius),
                        color: ThemeHelper.white20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        (title ?? '').toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyleHelper.f16w800,
                      ),
                    )
                  : Container(
                      margin: margin ??
                          const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 6,
                          ),
                      child: Text(
                        (title ?? '').toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyleHelper.f16w800,
                      ),
                    )
              : const SizedBox(),
          SizedBox(
            width: width,
            height: height,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(radius),
                onTap: () => onTap(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
