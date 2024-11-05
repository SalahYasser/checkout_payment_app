import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethodItems = const [
    'assets/images/credit_card.svg',
    'assets/images/paypal.svg'
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethodItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
