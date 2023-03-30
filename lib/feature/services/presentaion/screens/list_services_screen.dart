import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/footer_and_application_widget.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';

class ListServicesScreen extends StatefulWidget {
  final List<Offer> listOfOffer;
  const ListServicesScreen({super.key, required this.listOfOffer});

  @override
  State<ListServicesScreen> createState() => _ListServicesScreenState();
}

class _ListServicesScreenState extends State<ListServicesScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.blackLogo,
        ThemeHelper.color414141,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    TextHelper.ourServices.toUpperCase(),
                    style: TextStyleHelper.f16w700,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    TextHelper.employeeExperience,
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.f14w300,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var offer = widget.listOfOffer[index];
                  return Column(
                    children: [
                      ImageAndTextBoxWidget(
                        width: context.width * 0.9139,
                        height: context.height * 0.21,
                        alignment: AlignmentDirectional.bottomStart,
                        imageUrl: offer.image,
                        title: offer.typeOfGates,
                        radius: 10,
                        onTap: () => context.router.push(
                          ServiceScreenRoute(offer: offer),
                        ),
                      ),
                      if (index != (widget.listOfOffer.length - 1))
                        const SizedBox(height: 30),
                    ],
                  );
                },
                childCount: widget.listOfOffer.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 40),
            sliver: SliverToBoxAdapter(
              child: FooterAndApplication(
                moveToAboutUs: () {},
                moveToReviws: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
