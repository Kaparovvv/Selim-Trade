import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/circle_back_button_widget.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/company_location_widget.dart';

import '../../exports/export.dart';

class MiniWidgetCompanyLocation extends StatelessWidget {
  const MiniWidgetCompanyLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width * 0.3361,
          height: height * 0.1453,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: ThemeHelper.color105BFB,
              width: 0.12,
            ),
          ),
          child: const CompanyLocationBoxWidget(),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 5,
            top: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: ThemeHelper.white.withOpacity(0.4),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 3,
          ),
          child: const Text(
            TextHelper.address,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyleHelper.f9w700,
          ),
        ),
        Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              width: width * 0.3361,
              height: height * 0.1453,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.transparent,
              ),
            ),
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SafeArea(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    const CompanyLocationBoxWidget(zoomControlsEnabled: true),
                    Positioned(
                      right: 25,
                      top: 45,
                      child: CircleBackButtonWidget(
                        color: ThemeHelper.color105BFB.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
