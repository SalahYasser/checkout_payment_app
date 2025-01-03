import 'package:checkout_payment_app/core/utils/functions/custom_snack_bar.dart';
import 'package:checkout_payment_app/core/utils/functions/execute_paypal_payment.dart';
import 'package:checkout_payment_app/core/utils/functions/get_transaction_data.dart';
import 'package:checkout_payment_app/core/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/manger/cubit/payment_cubit.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

            var transactionData = getTransactionData();

            executePaypalPayment(context, transactionData);

          },

          isLoading: state is PaymentLoading ? true : false,
          text: 'Continue',

        );
      },
    );
  }


}
