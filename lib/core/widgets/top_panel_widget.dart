import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/url_launcher/url_launcher.dart';
import '../exports/export.dart';
import '../router/app_router.gr.dart';

enum _MenuValues {
  main,
  services,
  news,
  ourWorks,
  call,
}

class TopPanelWidget {
  PreferredSizeWidget topPanelWidget(
    double width,
    double height,
    BuildContext context,
    String iconLogo,
    Color burgerTheme,
  ) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: ThemeHelper.blueGrey,
          child: Image.asset(
            width: width * 0.2,
            height: height * 0.04,
            iconLogo,
          ),
          onTap: () => context.router.push(const MainScreenRoute()),
        ),
      ),
      actions: [
        PopupMenuButton<_MenuValues>(
          icon: ImageIcon(
            const AssetImage(IconHelper.menu),
            color: burgerTheme,
          ),
          iconSize: 31,
          color: ThemeHelper.white,
          padding: const EdgeInsets.only(right: 0),
          itemBuilder: (context) => [
            PopupMenuItem(
              padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
              value: _MenuValues.main,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(TextHelper.main),
                  const SizedBox(width: 111),
                  Image.asset(
                    IconHelper.blackLogo,
                    width: 36,
                    height: 16,
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: _MenuValues.services,
              padding: const EdgeInsets.only(top: 15, left: 13),
              child: text(TextHelper.service),
            ),
            PopupMenuItem(
              value: _MenuValues.news,
              padding: const EdgeInsets.only(top: 15, left: 13),
              child: text(TextHelper.news),
            ),
            PopupMenuItem(
              value: _MenuValues.ourWorks,
              padding: const EdgeInsets.only(top: 15, left: 13),
              child: text(TextHelper.ourWorks),
            ),
            PopupMenuItem(
              value: _MenuValues.call,
              padding: const EdgeInsets.only(top: 20, left: 13, bottom: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextHelper.city,
                    style: TextStyleHelper.f14w500
                        .copyWith(color: ThemeHelper.color001645),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ImageIcon(
                        AssetImage(IconHelper.call),
                        color: ThemeHelper.color001645,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        TextHelper.contact1,
                        style: TextStyleHelper.f12w600,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
          onSelected: (value) {
            switch (value) {
              case _MenuValues.main:
                context.router.push(const MainScreenRoute());
                break;
              case _MenuValues.services:
                context.router.push(ListServicesScreenRoute(listOfOffer: []));
                break;
              case _MenuValues.news:
                context.router.push(const NewsFeedScreenRoute());
                break;
              case _MenuValues.ourWorks:
                context.router.push(OurWorksScreenRoute(listOfWorks: []));
                break;
              case _MenuValues.call:
                UrlLauncher().makePhoneCall(TextHelper.contact1);
                break;
            }
          },
        )
      ],
    );
  }

  Widget text(String text) {
    return Text(
      text,
      style: TextStyleHelper.f14w600.copyWith(color: ThemeHelper.color001645),
    );
  }
}
