import 'package:flutter/material.dart';

import '../../exports/export.dart';
import '../../url_launcher/url_launcher.dart';

class ContactsCompanyWidget extends StatelessWidget {
  const ContactsCompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          IconHelper.blueLogo,
          width: context.width * 0.125,
          height: context.height * 0.0283,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 13.71),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            customText(TextHelper.operatingMode),
            const SizedBox(height: 2.5),
            customText(TextHelper.workDays),
            const SizedBox(height: 2.5),
            customText(TextHelper.saturday),
            const SizedBox(height: 7.5),
            customText(TextHelper.phone.toUpperCase()),
            const SizedBox(height: 2.5),
            textButton(
              TextHelper.contact1,
              () => UrlLauncher().makePhoneCall(TextHelper.contact1),
            ),
            const SizedBox(height: 2.5),
            textButton(
              TextHelper.contact2,
              () => UrlLauncher().makePhoneCall(TextHelper.contact2),
            ),
            const SizedBox(height: 2.5),
            textButton(
              TextHelper.contact3,
              () => UrlLauncher().makePhoneCall(TextHelper.contact3),
            ),
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

  Material textButton(String text, Function() onPressed) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        splashColor: ThemeHelper.color001645,
        autofocus: true,
        child: customText(text),
        onTap: () => onPressed(),
      ),
    );
  }
}
