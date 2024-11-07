import 'package:checkout_payment_app/core/errors/failures.dart';
import 'package:checkout_payment_app/core/utils/stripe_service.dart';
import 'package:checkout_payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CheckoutRepoImpl extends CheckoutRepo {

  final StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await StripeService().makePayment(paymentIntentInputModel: paymentIntentInputModel);

      return right(null);

    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
