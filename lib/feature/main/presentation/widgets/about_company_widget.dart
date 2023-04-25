import 'package:flutter/material.dart';

import '../../../../core/exports/export.dart';

class AboutCompanyWidget extends StatelessWidget {
  const AboutCompanyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          TextHelper.isCompany,
          style: TextStyleHelper.f16w700,
        ),
        const SizedBox(height: 10),
        Container(
          width: context.width * 0.85,
          color: ThemeHelper.white,
          padding: const EdgeInsets.only(left: 5, top: 4, bottom: 10),
          child: Column(
            children: const [
              Text(
                TextHelper.aboutCompany1,
                style: TextStyleHelper.f14w300,
              ),
              SizedBox(height: 10),
              Text(
                TextHelper.aboutCompany2,
                style: TextStyleHelper.f14w300,
              ),
              SizedBox(height: 10),
              Text(
                TextHelper.aboutCompany3,
                style: TextStyleHelper.f14w300,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
