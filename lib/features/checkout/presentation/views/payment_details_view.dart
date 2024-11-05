import 'package:checkout_payment_app/core/utils/help_functions/buildAppBar.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
