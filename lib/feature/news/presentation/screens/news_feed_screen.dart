import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/footer_and_application_widget.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  late ScrollController _scrollController;
  final ListOfNewsData _newsData = ListOfNewsData();

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
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    TextHelper.newsOfCompany.toUpperCase(),
                    style: TextStyleHelper.f16w700,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    TextHelper.newsDesc,
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
                        width: context.width * 0.91,
                        height: context.height * 0.2759,
                        imageUrl: _newsData.listNewsData[index].image,
                        title: _newsData.listNewsData[index].title,
                        isTextWithBackground: false,
                        alignment: AlignmentDirectional.center,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        onTap: () => context.router.push(
                          NewsScreenRoute(
                            newsData: _newsData.listNewsData[index],
                          ),
                        ),
                      ),
                      if (index != (7 - 1)) const SizedBox(height: 30),
                    ],
                  );
                },
                childCount: listOfWorks.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20, left: 115, right: 115),
            sliver: SliverToBoxAdapter(
              child: CustomOutlinedButtonWidget(
                title: TextHelper.downloadMore.toLowerCase(),
                textStyle: TextStyleHelper.f14w400,
                onPressed: () {},
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 71),
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
    _scrollController.dispose();
    super.dispose();
  }
}
