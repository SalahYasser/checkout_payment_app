import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('You have bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Replay to ApiServer was canceled');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try again');
      case DioExceptionType.unknown:
        return ServerFailure('Oops, there was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('You request not fond, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internet server error, please try later!');
    } else if (statusCode == 429) {
      return ServerFailure(
        'the API sleeps from 3 A.M to 9 A.M daily,'
        'please try again in the available time for the API..',
      );
    } else {
      return ServerFailure('Oops, there was an error, please try again');
    }
  }
}
