import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});


                  }
                },
                text: 'Pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
