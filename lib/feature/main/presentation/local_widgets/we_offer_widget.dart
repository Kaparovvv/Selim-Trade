import 'package:flutter/material.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/custom_outli_button_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/scroll_button_widget.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

class WeOfferWidget extends StatefulWidget {
  final String? imageUrl;
  final String? description;
  const WeOfferWidget({super.key, this.imageUrl, this.description});

  @override
  State<WeOfferWidget> createState() => _WeOfferWidgetState();
}

class _WeOfferWidgetState extends State<WeOfferWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.weOffer,
          textAlign: TextAlign.center,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: width,
          height: height * 0.21,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => ImageAndTextBoxWidget(
              width: width * 0.69,
              height: height * 0.21,
              imageUrl: widget.imageUrl,
              description: widget.description,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScrollButtonWidget(
                icon: IconHelper.arrowLeft,
                onPressed: () {},
              ),
              CustomOutlinedButtonWidget(
                title: TextHelper.viewAll,
                onPressed: () {},
              ),
              ScrollButtonWidget(icon: IconHelper.arrowRight, onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
