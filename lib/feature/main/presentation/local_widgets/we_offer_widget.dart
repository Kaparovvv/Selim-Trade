import 'package:flutter/material.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/custom_outli_button_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/scroll_button_widget.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

extension Test on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

class WeOfferWidget extends StatefulWidget {
  final String? imageUrl;
  final String? description;
  const WeOfferWidget({super.key, this.imageUrl, this.description});

  @override
  State<WeOfferWidget> createState() => _WeOfferWidgetState();
}

class _WeOfferWidgetState extends State<WeOfferWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          width: context.width,
          height: context.height * 0.21,
          child: ListView.separated(
            controller: _scrollController,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => ImageAndTextBoxWidget(
              width: context.width * 0.69,
              height: context.height * 0.21,
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
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () {},
              ),
              CustomOutlinedButtonWidget(
                title: TextHelper.viewAll,
                onPressed: () {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                },
              ),
              ScrollButtonWidget(
                icon: IconHelper.arrowRight,
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
