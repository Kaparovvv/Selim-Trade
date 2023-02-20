import 'package:flutter/material.dart';
import 'package:selim_trade_app/commons/icon_helper.dart';
import 'package:selim_trade_app/commons/theme_helper.dart';

class TopPanelWidget {
  PreferredSizeWidget topPanelWidget(double width, double height) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Image.asset(
        width: width * 0.2,
        height: height * 0.04,
        IconHelper.logo,
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: const ImageIcon(
              AssetImage(IconHelper.menu),
              size: 31,
              color: ThemeHelper.colorF1F6FF,
            ),
          ),
        ),
      ],
    );
  }
}
