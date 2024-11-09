import 'package:checkout_payment_app/core/utils/functions/buildAppBar.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ThankYouViewBody(),
    );
  }
}
