import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/sending_an_applica_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/about_company_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/latest_news_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/our_advantages_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/our_service_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/our_works_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/reviews_widget.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/we_offer_widget.dart';

import '../../../../core/exports/export.dart';

class BodyWidgets extends StatelessWidget {
  const BodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height * 1.58,
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
                  child: WeOfferWidget(
                    imageUrl:
                        'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
                    description: 'Ворота',
                  ),
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
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: SendingAnApplicationWidget(),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 60),
                //   child: FooterWidget(),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
