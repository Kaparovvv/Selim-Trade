import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';

class OurAdvantagesWidget extends StatelessWidget {
  const OurAdvantagesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      TextHelper.freeDeparture,
      TextHelper.experience,
      TextHelper.minimumTime,
      TextHelper.highlyQualified,
      TextHelper.repair,
    ];

    List<String> icons = [
      IconHelper.departure,
      IconHelper.experience,
      IconHelper.deadlines,
      IconHelper.staff,
      IconHelper.repair,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.ourAdvantages,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 19),
        SizedBox(
          width: context.width,
          height: context.height * 0.15,
          child: ListView.separated(
            itemCount: titles.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => Container(
              width: context.width * 0.62,
              height: context.height * 0.15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ThemeHelper.colorFDFDFD,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: ThemeHelper.white13,
                    offset: Offset(0, 0.89),
                    blurRadius: 8.9,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
              child: Column(
                children: [
                  Image.asset(
                    icons[index],
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    titles[index],
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleHelper.f14w600,
                  )
                ],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 19),
          ),
        ),
      ],
    );
  }
}
