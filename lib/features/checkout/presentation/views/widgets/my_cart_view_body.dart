import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Image.asset('assets/images/basket.png'),
          const SizedBox(height: 25),
          const CartInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(height: 3),
          const CartInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(height: 3),
          const CartInfoItem(title: 'Shipping', value: r'$8'),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(height: 16),
          const CustomButton(),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
