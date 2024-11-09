import 'package:checkout_payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment_app/features/checkout/data/models/amount_model/details.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item.dart';
import 'package:checkout_payment_app/features/checkout/data/models/item_list_model/item_list_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransactionData() {
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
    OrderItemModel(name: "Apple", quantity: 10, price: "4", currency: "USD"),
    OrderItemModel(name: "Apple", quantity: 12, price: "5", currency: "USD"),
  ];

  var itemList = ItemListModel(orders: orders);

  return (amount: amount, itemList: itemList);
}
