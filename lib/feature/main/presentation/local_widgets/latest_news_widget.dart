import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/core/widgets/news_box_widget.dart';
import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';

import '../../../../core/exports/export.dart';

class LatestNewsWidget extends StatelessWidget {
  const LatestNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ListOfNewsData newsData = ListOfNewsData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.latestNews,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: context.width,
          height: context.height * 0.2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => NewsBoxWidget(
              width: context.width * 0.67,
              height: context.height * 0.2,
              imageUrl: newsData.listNewsData[index].image,
              title: newsData.listNewsData[index].title,
              description: newsData.listNewsData[index].desc,
              onPressed: () => context.router.push(
                NewsScreenRoute(newsData: newsData.listNewsData[index]),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 13),
            itemCount: newsData.listNewsData.length,
          ),
        ),
        const SizedBox(height: 15),
        CustomOutlinedButtonWidget(
          title: TextHelper.allNews,
          onPressed: () => context.router.push(const NewsFeedScreenRoute()),
        ),
      ],
    );
  }
}
