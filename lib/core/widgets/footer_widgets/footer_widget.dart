import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/contacts_company_widget.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/mini_widget_compa_loca.dart';
import '../../exports/export.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.32,
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: width,
            height: height * 0.0677,
            decoration: const BoxDecoration(
              color: ThemeHelper.color5061FF,
            ),
            padding: const EdgeInsets.only(
              top: 23,
              left: 10,
              bottom: 2,
              right: 10,
            ),
            child: const Text(
              TextHelper.sourceRights,
              style: TextStyleHelper.f10w300,
            ),
          ),
          Positioned(
            bottom: 36,
            child: Container(
              width: width,
              height: height * 0.2783,
              decoration: BoxDecoration(
                color: ThemeHelper.colorF9F9F9,
                borderRadius: BorderRadius.circular(9),
                image: const DecorationImage(
                  scale: 2.5,
                  repeat: ImageRepeat.noRepeat,
                  alignment: Alignment.topCenter,
                  image: AssetImage(ImageHelper.backFooter),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 15,
                top: 9,
                right: 15,
                bottom: 13,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ContactsCompanyWidget(),
                      MiniWidgetCompanyLocation(),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.26,
                            child: const Text(
                              TextHelper.socialNetwork,
                              maxLines: 2,
                              style: TextStyleHelper.f12w500,
                            ),
                          ),
                          const SizedBox(height: 4.5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              iconButton(
                                IconHelper.instagram,
                                width,
                                height,
                                () {},
                              ),
                              const SizedBox(width: 10),
                              iconButton(
                                IconHelper.whatsapp,
                                width,
                                height,
                                () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 29),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              textButton(TextHelper.main, () {}),
                              const SizedBox(height: 4),
                              textButton(TextHelper.aboutUs, () {}),
                              const SizedBox(height: 4),
                              textButton(TextHelper.service, () {}),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              textButton(TextHelper.works, () {}),
                              const SizedBox(height: 4),
                              textButton(TextHelper.reviews, () {}),
                              const SizedBox(height: 4),
                              textButton(TextHelper.news, () {}),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textButton(String text, Function() onPressed) {
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

  Widget iconButton(
    String icon,
    double width,
    double height,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Image.asset(
        icon,
        width: width * 0.0861,
        height: height * 0.0382,
      ),
    );
  }

  Text customText(String text) {
    return Text(
      text,
      style: TextStyleHelper.f12w500,
    );
  }
}
