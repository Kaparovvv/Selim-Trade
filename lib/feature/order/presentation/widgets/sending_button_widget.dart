import 'package:flutter/material.dart';
import 'package:selim_trade_app/core/exports/export.dart';
import 'package:selim_trade_app/feature/order/presentation/bloc/order_bloc.dart';

class SendingButtonWidget extends StatelessWidget {
  const SendingButtonWidget({
    super.key,
    required this.formkey,
    required this.orderBloc,
    required this.nameController,
    required this.phoneController,
    required this.messageController,
  });

  final GlobalKey<FormState> formkey;
  final OrderBloc orderBloc;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.77,
      height: context.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ThemeHelper.color105BFB,
            ThemeHelper.color5061FF,
          ],
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
          if (formkey.currentState!.validate()) {
            orderBloc.add(
              CreateOrderEvent(
                name: nameController.text,
                phoneNumber: phoneController.text,
                message: messageController.text,
              ),
            );
          }
        },
      ),
    );
  }
}
