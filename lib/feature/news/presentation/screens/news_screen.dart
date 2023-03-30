import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/news_box_widget.dart';

import '../../../../core/widgets/footer_and_application_widget.dart';

class NewsScreen extends StatefulWidget {
  final NewsData newsData;
  const NewsScreen({super.key, required this.newsData});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final ListOfNewsData _newsData = ListOfNewsData();

  @override
  Widget build(BuildContext context) {
    var newsData = widget.newsData;
    return Scaffold(
      appBar: TopPanelWidget().topPanelWidget(
        context.width,
        context.height,
        context,
        IconHelper.blackLogo,
        ThemeHelper.color414141,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 51),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Text(
                      newsData.title.toUpperCase(),
                      style: TextStyleHelper.f16w700,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      newsData.desc,
                      style: TextStyleHelper.f14w300,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 7),
              CachedNetworkImageWidget(
                width: context.width * 0.9333,
                height: context.height * 0.431,
                radius: BorderRadius.circular(20),
                imageUrl: newsData.image,
              ),
              newsData.table.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: CachedNetworkImageWidget(
                        width: context.width * 0.9722,
                        height: context.height * 0.2069,
                        radius: BorderRadius.circular(20),
                        imageUrl: newsData.table,
                      ),
                    )
                  : const SizedBox(),
              Padding(
                padding: const EdgeInsets.only(top: 51),
                child: Column(
                  children: [
                    Text(
                      TextHelper.relatedNews.toUpperCase(),
                      style: TextStyleHelper.f16w700,
                    ),
                    SizedBox(
                      width: context.width,
                      height: context.height * 0.2648,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 27),
                        itemBuilder: (context, index) => NewsBoxWidget(
                          width: context.width * 0.8778,
                          height: context.height * 0.2648,
                          imageUrl: _newsData.listNewsData[index].image,
                          title: _newsData.listNewsData[index].title,
                          description: _newsData.listNewsData[index].desc,
                          onPressed: () {},
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 13),
                        itemCount: _newsData.listNewsData.length,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 65),
              FooterAndApplication(
                moveToAboutUs: () {},
                moveToReviws: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
