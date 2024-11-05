import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style18,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.styleBold18,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
