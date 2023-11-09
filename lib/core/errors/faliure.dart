import 'package:dio/dio.dart';

abstract class Failure {
  final String errormessage;
  Failure(this.errormessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errormessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure('Connection Timeout With Api Server ');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout With Api Server ');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout With Api Server ');
      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to Api was canceled');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure('No Internet Exception');
        }
        return ServerFailure('Unexpected error,try again');
      default:
        return ServerFailure('Opps there was an error ,try again ');
    }
  }

  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure('Your request not found,\n Try again later');
    } else if (statuscode == 500) {
      return ServerFailure('Internal Server error,\n Try again later');
    } else {
      return ServerFailure('Opps there was an error ,try again');
    }
  }
}
