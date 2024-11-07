import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25 + 18, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 42),
            const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'To', value: 'To'),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            const SizedBox(height: 30),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(
                        width: 1.5,
                        color: Color(0xff34A853),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Paid',
                      style: Styles.style24.copyWith(
                        color: const Color(0xff34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
