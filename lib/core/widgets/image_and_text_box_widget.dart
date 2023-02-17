import 'package:flutter/material.dart';

import '../exports/export.dart';

class ImageAndTextBoxWidget extends StatelessWidget {
  const ImageAndTextBoxWidget({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.description,
    this.isTextWithBackground = true,
    this.boxShadow,
  }) : super(key: key);
  final String? imageUrl;
  final double width;
  final double height;
  final String? description;
  final bool isTextWithBackground;
  final BoxShadow? boxShadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: isTextWithBackground
            ? AlignmentDirectional.bottomStart
            : AlignmentDirectional.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                boxShadow ?? const BoxShadow(),
              ],
            ),
            child: CachedNetworkImageWidget(
              imageUrl: imageUrl,
              width: width,
              height: height,
              radius: BorderRadius.circular(12),
            ),
          ),
          description != null
              ? isTextWithBackground
                  ? Container(
                      margin: const EdgeInsets.only(
                        left: 6,
                        bottom: 6,
                        right: 6,
                        top: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ThemeHelper.white20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        description ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyleHelper.f16w800,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(
                        left: 6,
                        bottom: 6,
                        right: 6,
                        top: 6,
                      ),
                      child: Text(
                        description ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyleHelper.f16w800,
                      ),
                    )
              : const SizedBox(),
        ],
      ),
    );
  }
}
