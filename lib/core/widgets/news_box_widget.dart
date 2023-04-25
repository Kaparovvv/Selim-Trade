import 'package:flutter/material.dart';

import 'custom_outli_button_widget.dart';
import '../exports/export.dart';

class NewsBoxWidget extends StatefulWidget {
  const NewsBoxWidget({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.title,
    this.description,
    this.boxShadow,
    required this.onPressed,
  }) : super(key: key);
  final String? imageUrl;
  final double width;
  final double height;
  final String? title;
  final String? description;
  final BoxShadow? boxShadow;
  final void Function() onPressed;

  @override
  State<NewsBoxWidget> createState() => _NewsBoxWidgetState();
}

class _NewsBoxWidgetState extends State<NewsBoxWidget> {
  bool isLongPress = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTap: () {
          if (mounted) {
            setState(() {
              isLongPress = true;
            });
          }
        },
        onTapUp: (details) {
          Future.delayed(const Duration(seconds: 3), () {
            if (mounted) {
              setState(() {
                isLongPress = false;
              });
            }
          });
        },
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  widget.boxShadow ?? const BoxShadow(),
                ],
              ),
              child: CachedNetworkImageWidget(
                imageUrl: widget.imageUrl,
                width: widget.width,
                height: widget.height,
                radius: BorderRadius.circular(12),
              ),
            ),
            isLongPress
                ? Container(
                    width: widget.width,
                    height: widget.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ThemeHelper.white40,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 12,
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.description ?? '',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            style: TextStyleHelper.f13w400
                                .copyWith(color: ThemeHelper.white),
                          ),
                          const SizedBox(height: 10),
                          CustomOutlinedButtonWidget(
                            title: TextHelper.toLearnMore,
                            height: 4,
                            textStyle: TextStyleHelper.f12w400
                                .copyWith(color: ThemeHelper.white),
                            radius: 25,
                            onPressed: () => widget.onPressed(),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Text(
                      widget.title ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyleHelper.f16w800,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
