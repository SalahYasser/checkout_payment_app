import 'dart:developer';

import 'package:checkout_payment_app/core/utils/help_functions/custom_snack_bar.dart';
import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/checkout/data/models/amount_model/details.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:checkout_payment_app/features/checkout/presentation/manger/cubit/payment_cubit.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return const ThankYouView();
              },
            ),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          return customSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel(
            //         amount: '100',
            //         currency: 'USD',
            //         customerId: 'cus_RB18onl7MZIVYd');
            //
            // BlocProvider.of<PaymentCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);

            var amount = AmountModel(
              total: "100",
              currency: "USD",
              details: Details(
                subtotal: "100",
                shipping: "0",
                shippingDiscount: 0,
              ),
            );


            List<OrderItemModel> orders = [
              OrderItemModel(
                  name: "Apple",
                  quantity: 10,
                  price: "4",
                  currency: "USD"
              ),

              OrderItemModel(
                  name: "Apple",
                  quantity: 12,
                  price: "5",
                  currency: "USD"
              ),
            ];

            var itemList = ItemListModel(orders: orders);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: [
                  {
                    "amount": amount.toJson(),
                    "description": "The payment transaction description.",
                    "item_list": itemList.toJson(),
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log("onSuccess: $params");
                  Navigator.pop(context);
                },
                onError: (error) {
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  Navigator.pop(context);
                },
              ),
            ));
          },
          isLoading: state is PaymentLoading ? true : false,
          text: 'Continue',
        );
      },
    );
  }
}

// 2023-08-16
