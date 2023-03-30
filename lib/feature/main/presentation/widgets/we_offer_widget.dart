import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';

import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/scroll_button_widget.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

class WeOfferWidget extends StatefulWidget {
  final List<Offer> listOfOffer;
  const WeOfferWidget({super.key, required this.listOfOffer});

  @override
  State<WeOfferWidget> createState() => _WeOfferWidgetState();
}

class _WeOfferWidgetState extends State<WeOfferWidget> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.7,
  );

  var _pageChanged = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {});
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
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.listOfOffer.length,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _pageChanged = index;
              });
            },
            itemBuilder: (context, index) {
              var offer = widget.listOfOffer[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: ImageAndTextBoxWidget(
                    width: context.width * 0.69,
                    height: context.height * 0.21,
                    alignment: AlignmentDirectional.bottomStart,
                    imageUrl: offer.image,
                    title: offer.typeOfGates,
                    onTap: () {},
                  ),
                ),
              );
            },
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
                onPressed: () => _pageController.animateToPage(
                  --_pageChanged,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.ease,
                ),
              ),
              CustomOutlinedButtonWidget(
                title: TextHelper.viewAll,
                onPressed: () => context.router.push(
                  ListServicesScreenRoute(
                    listOfOffer: widget.listOfOffer,
                  ),
                ),
              ),
              ScrollButtonWidget(
                icon: IconHelper.arrowRight,
                iconTheme: ThemeHelper.color105BFB,
                onPressed: () {
                  _pageController.animateToPage(
                    ++_pageChanged,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
