import 'package:flutter/material.dart';
import 'package:selim_trade_app/feature/main/presentation/local_widgets/custom_outli_button_widget.dart';

import '../../../../core/exports/export.dart';
import '../../../../core/widgets/image_and_text_box_widget.dart';

class LatestNewsWidget extends StatelessWidget {
  const LatestNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.latestNews,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: width,
          height: height * 0.2,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => ImageAndTextBoxWidget(
              width: width * 0.67,
              height: height * 0.2,
              imageUrl:
                  'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
              description: TextHelper.aboutCompany3,
              isTextWithBackground: false,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 13),
          ),
        ),
        const SizedBox(height: 15),
        CustomOutlinedButtonWidget(
          title: TextHelper.allNews,
          onPressed: () {},
        ),
      ],
    );
  }
}
