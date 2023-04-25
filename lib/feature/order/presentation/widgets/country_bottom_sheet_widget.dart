import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';

typedef IconCallback = void Function(Object? icon);

class CountryBottomSheetWidget extends StatefulWidget {
  final IconCallback iconCallback;
  const CountryBottomSheetWidget({
    super.key,
    required this.iconCallback,
  });

  @override
  State<CountryBottomSheetWidget> createState() =>
      _CountryBottomSheetWidgetState();
}

class _CountryBottomSheetWidgetState extends State<CountryBottomSheetWidget> {
  List<CountryCode> listOfCountry = [
    CountryCode(
      country: '+996 (xxx) xxx-xxx',
      icon: IconHelper.kyrgyzstan,
    ),
    CountryCode(
      country: '+7 (xxxx) xxx-xx-xx',
      icon: IconHelper.kazakhstan,
    ),
    CountryCode(
      country: '+7 (xxx) ххх-xx-xx',
      icon: IconHelper.russia,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          child: Container(
            width: context.width * 0.2,
            height: 6,
            decoration: BoxDecoration(
              color: ThemeHelper.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 40,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listOfCountry.length,
            itemBuilder: (context, index) {
              var icon = listOfCountry[index].icon;
              var country = listOfCountry[index].country;
              return _rowButton(
                icon: icon,
                country: country,
                onTap: () {
                  setState(() {
                    widget.iconCallback(icon);
                  });
                  context.router.pop();
                },
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: ThemeHelper.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Material _rowButton({
    required String icon,
    required String country,
    required Function() onTap,
  }) {
    return Material(
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                width: 70,
                height: 50,
                icon,
              ),
              const SizedBox(width: 30),
              Text(
                country.toLowerCase(),
                style: TextStyleHelper.f18w500.copyWith(letterSpacing: 3),
              ),
            ],
          ),
        ),
        onTap: () => onTap(),
      ),
    );
  }
}

class CountryCode {
  final String country;
  final String icon;
  CountryCode({
    required this.country,
    required this.icon,
  });
}
