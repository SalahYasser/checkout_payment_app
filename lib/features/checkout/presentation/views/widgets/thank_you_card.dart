import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25 + 18, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 42),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(height: 20),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(height: 20),
            PaymentItemInfo(title: 'To', value: 'To'),
            Divider(
              thickness: 2,
              height: 60,
            ),
            TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(height: 30),
            CardInfoWidget(),
          ],
        ),
      ),
    );
  }
}
