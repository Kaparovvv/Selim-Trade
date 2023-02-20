import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:selim_trade_app/core/widgets/custom_textfield_widget.dart';

import '../../commons/validates_helper.dart';
import '../exports/export.dart';

class SendingAnApplicationWidget extends StatefulWidget {
  const SendingAnApplicationWidget({super.key});

  @override
  State<SendingAnApplicationWidget> createState() =>
      _SendingAnApplicationWidgetState();
}

class _SendingAnApplicationWidgetState
    extends State<SendingAnApplicationWidget> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _messageController;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  ValidatesHelper validatesHelper = ValidatesHelper();

  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _messageController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              TextHelper.question,
              style: TextStyleHelper.f16w700,
            ),
            const SizedBox(height: 20),
            CustomTextFieldWidget(
              controller: _nameController,
              hinText: TextHelper.name,
              validate: (value) =>
                  validatesHelper.titleValidate(value!, TextHelper.name),
            ),
            const SizedBox(height: 15),
            CustomTextFieldWidget(
              controller: _phoneController,
              hinText: TextHelper.phone,
              keyboardType: TextInputType.phone,
              inputFormatters: [maskFormatter],
              validate: (value) => validatesHelper.phoneValidate(value!),
            ),
            const SizedBox(height: 15),
            CustomTextFieldWidget(
              controller: _messageController,
              hinText: TextHelper.message,
              maxLines: 6,
              validate: (value) =>
                  validatesHelper.titleValidate(value!, TextHelper.message),
            ),
            const SizedBox(height: 15),
            Container(
              width: width * 0.77,
              height: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [ThemeHelper.color105BFB, ThemeHelper.color5061FF],
                ),
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  TextHelper.application,
                  style: TextStyleHelper.f14w900,
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print('Validate Success');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  var maskFormatter = MaskTextInputFormatter(
    mask: '+996 (###) ###-###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
}
