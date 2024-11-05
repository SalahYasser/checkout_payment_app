import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PaymentMethodListView()],
    );
  }
}

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  final List<String> paymentMethodItems = const [
    'assets/images/credit_card.svg',
    'assets/images/paypal.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PaymentMethodItem(
            isActive: false,
            image: paymentMethodItems[index],
          );
        },
      ),
    );
  }
}
