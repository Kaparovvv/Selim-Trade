import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../exports/export.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageUrl,
    this.radius,
    this.isRadius = true,
    this.shape,
  }) : super(key: key);
  final bool isRadius;
  final String? imageUrl;
  final double width;
  final double height;
  final BorderRadius? radius;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl:
            'http://161.35.29.179:8080${imageUrl ?? '/static/images/3a0994e4-0cc0-4090-9cb7-f68b6adb8cea.r1.jpg'}',
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: isRadius ? radius : null,
            shape: shape ?? BoxShape.rectangle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[200]!,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ThemeHelper.white,
              borderRadius: radius,
              shape: shape ?? BoxShape.rectangle,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          ImageHelper.imageNotFound,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
