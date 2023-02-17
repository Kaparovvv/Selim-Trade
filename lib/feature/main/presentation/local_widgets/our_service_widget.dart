import 'package:flutter/cupertino.dart';

import '../../../../core/exports/export.dart';

class OurServiceWidget extends StatelessWidget {
  const OurServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      TextHelper.consultation,
      TextHelper.settingUpControl,
      TextHelper.montage,
      TextHelper.postWarrantyService,
    ];

    List<String> icons = [
      IconHelper.consultation,
      IconHelper.remoteCon,
      IconHelper.montage,
      IconHelper.service,
    ];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          TextHelper.services,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 21),
        SizedBox(
          width: width,
          height: height * 0.15,
          child: ListView.separated(
            itemCount: titles.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 17, right: 17),
            itemBuilder: (context, index) => Container(
              width: width * 0.55,
              height: height * 0.15,
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
