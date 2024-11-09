import 'dart:developer';

import 'package:checkout_payment_app/core/utils/api_keys.dart';
import 'package:checkout_payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

void executePaypalPayment(BuildContext context, ({AmountModel amount, ItemListModel itemList}) transactionData) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientId,
        secretKey: ApiKeys.paypalSecretKay,
        transactions: [
          {
            "amount": transactionData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionData.itemList.toJson(),
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
    ),
  );
}
