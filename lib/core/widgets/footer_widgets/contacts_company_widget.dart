import 'package:flutter/material.dart';

import '../../exports/export.dart';

class ContactsCompanyWidget extends StatelessWidget {
  const ContactsCompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          IconHelper.blueLogo,
          width: width * 0.125,
          height: height * 0.0283,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 13.71),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            customText(TextHelper.operatingMode),
            const SizedBox(height: 2.5),
            customText('Пн-Пт 8:30–18:30'),
            const SizedBox(height: 2.5),
            customText('Суббота 8:30–14:00'),
            const SizedBox(height: 7.5),
            customText(TextHelper.phone.toUpperCase()),
            const SizedBox(height: 2.5),
            customText('+996 (552) 57 07 55'),
            const SizedBox(height: 2.5),
            customText('+996 (552) 57 07 55'),
            const SizedBox(height: 2.5),
            customText('+996 (552) 57 07 55'),
          ],
        ),
      ],
    );
  }

  Text customText(String text) {
    return Text(
      text,
      style: TextStyleHelper.f12w500,
    );
  }
}
