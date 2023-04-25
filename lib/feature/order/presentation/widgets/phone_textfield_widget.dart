import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:selim_trade_app/core/commons/validates_helper.dart';
import 'package:selim_trade_app/feature/order/presentation/widgets/country_bottom_sheet_widget.dart';

import '../../../../core/exports/export.dart';

class PhoneTextFieldWidget extends StatefulWidget {
  const PhoneTextFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  State<PhoneTextFieldWidget> createState() => _PhoneTextFieldWidgetState();
}

class _PhoneTextFieldWidgetState extends State<PhoneTextFieldWidget> {
  Object? selectedIcon = IconHelper.kyrgyzstan;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      style: TextStyleHelper.f14w600.copyWith(
        decorationThickness: 0,
      ),
      decoration: InputDecoration(
        hintText: TextHelper.phone,
        hintStyle: TextStyleHelper.f14w500,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                width: 50,
                height: 30,
                selectedIcon.toString(),
                fit: BoxFit.contain,
              ),
              onTap: () => _showModalBottomSheet(context),
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.color414141),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
      ),
      validator: (value) => ValidatesHelper().phoneValidate(value!),
      inputFormatters: [_maskFormatter()],
    );
  }

  MaskTextInputFormatter _maskFormatter() {
    if (selectedIcon == IconHelper.kyrgyzstan) {
      return MaskTextInputFormatter(
        mask: '+996 (###) ###-###',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
      );
    } else if (selectedIcon == IconHelper.kazakhstan) {
      return MaskTextInputFormatter(
        mask: '+7 (####) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
      );
    } else {
      return MaskTextInputFormatter(
        mask: '+7 (###) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy,
      );
    }
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CountryBottomSheetWidget(
          iconCallback: (icon) => setState(() {
            selectedIcon = icon;
            log(selectedIcon.toString());
          }),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
