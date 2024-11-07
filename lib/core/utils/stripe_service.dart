import 'package:dio/dio.dart';

class StripeService {
  final dio = Dio();

  Future<Response> post({
    required body,
    required String url,
    required String token,
    String? contentType,
  }) async {
    var response = dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: {'Authorization': "Bearer : $token"},
      ),
    );
    return response;
  }
}
