import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20),
          PaymentMethodListView(),
          SizedBox(height: 20),
          CustomButton(text: 'Continue'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
