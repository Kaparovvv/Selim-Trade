import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/widgets/alert_dialog_widget.dart';
import 'package:selim_trade_app/core/widgets/custom_textfield_widget.dart';
import 'package:selim_trade_app/feature/order/presentation/bloc/order_bloc.dart';
import 'package:selim_trade_app/feature/order/presentation/widgets/phone_textfield_widget.dart';
import 'package:selim_trade_app/feature/order/presentation/widgets/sending_button_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/commons/validates_helper.dart';
import '../../../../core/exports/export.dart';

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
  late OrderBloc _orderBloc;

  final _focusNode = FocusNode();

  void _hideKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus();
    }
  }

  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _messageController = TextEditingController();
    _orderBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _hideKeyboard,
      child: Padding(
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
                focusNode: FocusNode(),
                hinText: TextHelper.name,
                textCapitalization: TextCapitalization.words,
                validate: (value) =>
                    validatesHelper.titleValidate(value!, TextHelper.name),
              ),
              const SizedBox(height: 15),
              PhoneTextFieldWidget(
                controller: _phoneController,
              ),
              const SizedBox(height: 15),
              CustomTextFieldWidget(
                focusNode: _focusNode,
                controller: _messageController,
                hinText: TextHelper.message,
                maxLines: 6,
                textCapitalization: TextCapitalization.words,
                validate: (value) =>
                    validatesHelper.titleValidate(value!, TextHelper.message),
              ),
              const SizedBox(height: 15),
              BlocConsumer<OrderBloc, OrderState>(
                bloc: _orderBloc,
                listener: (context, state) {
                  if (state is LoadedCreateOrderState) {
                    _hideKeyboard();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialogWidget(
                        statusIcon: IconHelper.done,
                        content: TextHelper.orderIsSuccess,
                        buttonTitle: TextHelper.well,
                        onPressed: () => context.router.pop(),
                      ),
                    );
                    _nameController.clear();
                    _phoneController.clear();
                    _messageController.clear();
                  }
                  if (state is ErrorCreateOrderState) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialogWidget(
                        statusIcon: IconHelper.error,
                        content: state.message,
                        buttonTitle: TextHelper.well,
                        onPressed: () => context.router.pop(),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is LoadingCreateOrderState) {
                    return Shimmer.fromColors(
                      baseColor: ThemeHelper.color5061FF,
                      highlightColor: Colors.grey[200]!,
                      child: SendingButtonWidget(
                        formkey: _formkey,
                        orderBloc: _orderBloc,
                        nameController: _nameController,
                        phoneController: _phoneController,
                        messageController: _messageController,
                      ),
                    );
                  }
                  return SendingButtonWidget(
                    formkey: _formkey,
                    orderBloc: _orderBloc,
                    nameController: _nameController,
                    phoneController: _phoneController,
                    messageController: _messageController,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
