import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';

class ServiceScreen extends StatefulWidget {
  final Offer offer;
  const ServiceScreen({super.key, required this.offer});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var offer = widget.offer;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemeHelper.white,
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.logo,
        ThemeHelper.colorF1F6FF,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: context.height * 0.2291,
            automaticallyImplyLeading: false,
            backgroundColor: ThemeHelper.white,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              background: Stack(
                alignment: Alignment.center,
                children: [
                  CachedNetworkImageWidget(
                    width: context.width,
                    height: double.maxFinite,
                    imageUrl: offer.image,
                    radius: const BorderRadius.only(
                      bottomRight: Radius.circular(45),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 85,
                      left: 40,
                      right: 40,
                      bottom: 40,
                    ),
                    child: Text(
                      offer.typeOfGates,
                      textAlign: TextAlign.center,
                      style: TextStyleHelper.f16w800,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 22, left: 36.5, right: 36.5),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer.desc,
                    style: TextStyleHelper.f14w300,
                  ),
                  const SizedBox(height: 55),
                  Text(
                    TextHelper.typeOfGates.toUpperCase(),
                    style: TextStyleHelper.f16w800
                        .copyWith(color: ThemeHelper.color414141),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10, left: 36.5, right: 36.5),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var gates = offer.listOfGates[index];
                  return Column(
                    children: [
                      ImageAndTextBoxWidget(
                        width: context.width * 0.7972,
                        height: context.height * 0.2118,
                        isTextWithBackground: false,
                        alignment: AlignmentDirectional.bottomStart,
                        imageUrl: gates.image,
                        title: gates.gates,
                        radius: 10,
                        onTap: () {},
                      ),
                      if (index != (offer.listOfGates.length - 1))
                        const SizedBox(height: 30),
                    ],
                  );
                },
                childCount: offer.listOfGates.length,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 50, left: 36.5, right: 36.5),
            sliver: SliverToBoxAdapter(
              child: Text(
                TextHelper.mainAdvantages,
                textAlign: TextAlign.center,
                style: TextStyleHelper.f16w700,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var advantages = offer.listOfAdvantages[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        advantages.title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.f20w600,
                      ),
                      const SizedBox(height: 7),
                      Text(
                        advantages.desc.toLowerCase(),
                        style: TextStyleHelper.f14w300,
                      ),
                      if (index != (offer.listOfAdvantages.length - 1))
                        const SizedBox(height: 40),
                    ],
                  );
                },
                childCount: offer.listOfAdvantages.length,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 50),
            sliver: SliverToBoxAdapter(
              child: FooterAndApplication(),
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
