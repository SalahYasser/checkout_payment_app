import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/master.svg'),
          SizedBox(width: 23),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit Card',
                style: Styles.style18,
              ),
              Text(
                'Mastercard **78',
                style: Styles.style16,
              ),
            ],
          )
        ],
      ),
    );
  }
}
