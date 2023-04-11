import 'package:flutter/material.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/about_company_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/news/latest_news_widget.dart';

import 'package:selim_trade_app/feature/main/presentation/widgets/our_advantages_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/our_service_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/works/our_works_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/reviews/reviews_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/widgets/we_offer/we_offer_widget.dart';

import '../../../../core/exports/export.dart';

class BodyWidgets extends StatelessWidget {
  const BodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: context.width,
            height: context.height * 1.58,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageHelper.bodyBack),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: AboutCompanyWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: WeOfferWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: OurAdvantagesWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: LatestNewsWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: OurWorksWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: OurServiceWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: ReviewsWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
