import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/footer_widget.dart';
import 'package:selim_trade_app/feature/order/presentation/widgets/sending_an_applica_widget.dart';

class FooterAndApplication extends StatelessWidget {
  const FooterAndApplication({
    super.key,
    required this.moveToAboutUs,
    required this.moveToReviws,
  });

  final void Function() moveToAboutUs;
  final void Function() moveToReviws;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SendingAnApplicationWidget(),
        const SizedBox(height: 60),
        FooterWidget(
          moveToAboutUs: () => moveToAboutUs(),
          moveToReviws: () => moveToReviws(),
        ),
      ],
    );
  }
}
