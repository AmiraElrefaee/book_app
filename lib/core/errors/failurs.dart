import 'package:dio/dio.dart';

abstract class Failures{
  final String errMessage;

 const Failures(this.errMessage);
}

class ServerFailures extends Failures{
  ServerFailures(super.errMessage);
factory ServerFailures.fromDioException(DioException dioError){
 switch(dioError.type) {
   case DioExceptionType.connectionTimeout:
    return ServerFailures('connection timeout with api server');
   case DioExceptionType.sendTimeout:
     return ServerFailures('send timeout with api server');
   case DioExceptionType.receiveTimeout:
     return ServerFailures('recieve timeout with api server');
   case DioExceptionType.badCertificate:
     return ServerFailures('bad certificate');
   case DioExceptionType.badResponse:
     return ServerFailures.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
   case DioExceptionType.cancel:
     return ServerFailures('request to api server was cancel');
   case DioExceptionType.connectionError:
      return ServerFailures('connectin error ');
   case DioExceptionType.unknown:
     if (dioError.message!.contains('SocketException')){
       return ServerFailures('no internet connection');
     };
     return ServerFailures('unExpected error please try again');
   default:
     return ServerFailures('oops thers is an error plesae try again 2 ');

 }
}

factory ServerFailures.fromResponse(int statusCode, dynamic response){
if (statusCode==400 || statusCode==401 ||statusCode==403){
return ServerFailures(response['error']['message']);
} else if (statusCode==404){
  return ServerFailures('your request not found , try again later');
} else if (statusCode==500){
  return ServerFailures('internal server error , please try later');
}
else {
  return ServerFailures('oops thers is an error plesae try again ');
}
}
}