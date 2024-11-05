import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 60,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.5,
                color: Color(0xff43A835),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: const [
              BoxShadow(
                  color: Color(0xff43A835),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/credit_card.svg',
                height: 24,
              ),
            ),
          ),
        )
      ],
    );
  }
}
