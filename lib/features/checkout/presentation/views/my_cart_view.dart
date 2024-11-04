import 'package:checkout_payment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
    );
  }
}
