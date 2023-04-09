import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/image_and_text_box_widget.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';

class OurWorksScreen extends StatefulWidget {
  final List<Works> listOfWorks;
  const OurWorksScreen({super.key, required this.listOfWorks});

  @override
  State<OurWorksScreen> createState() => _OurWorksScreenState();
}

class _OurWorksScreenState extends State<OurWorksScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    TextHelper.ourWorks.toUpperCase(),
                    style: TextStyleHelper.f16w700,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    TextHelper.ourWorksDesc,
                    style: TextStyleHelper.f14w300,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      ImageAndTextBoxWidget(
                        width: context.width * 0.8889,
                        height: context.height * 0.2463,
                        imageUrl: null,
                        title: null,
                        alignment: AlignmentDirectional.center,
                        radius: 10,
                        onTap: () {},
                      ),
                      if (index != (widget.listOfWorks.length - 1))
                        const SizedBox(height: 25),
                    ],
                  );
                },
                childCount: listOfWorks.length,
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
