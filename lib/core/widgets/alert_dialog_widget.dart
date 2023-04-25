import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/core/widgets/custom_outli_button_widget.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget(
      {super.key,
      required this.statusIcon,
      required this.content,
      required this.buttonTitle,
      required this.onPressed});

  final String statusIcon;
  final String content;
  final String buttonTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            statusIcon,
            width: context.width * 0.2,
            height: context.height * 0.0887,
          ),
          const SizedBox(height: 30),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyleHelper.f16w700,
          ),
          const SizedBox(height: 20),
          CustomOutlinedButtonWidget(
            widthPadding: 20,
            title: buttonTitle.toUpperCase(),
            onPressed: () => onPressed(),
          ),
        ],
      ),
    );
  }
}
