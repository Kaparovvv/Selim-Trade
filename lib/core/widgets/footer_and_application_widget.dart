import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/widgets/footer_widgets/footer_widget.dart';
import 'package:selim_trade_app/core/widgets/sending_an_applica_widget.dart';

class FooterAndApplication extends StatelessWidget {
  const FooterAndApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SendingAnApplicationWidget(),
        SizedBox(height: 60),
        FooterWidget(),
      ],
    );
  }
}
