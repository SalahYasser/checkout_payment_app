import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/images/arrow.svg',
          ),
        ),
        elevation: 0,
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
    );
  }
}
