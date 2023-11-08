import 'package:dio/dio.dart';
class ApiService{
final baseurl='';
final Dio dio;

ApiService(this.dio);
Future<Map<String,dynamic>>get({required String endpoint})async{

 var response= await dio.get('$baseurl$endpoint');
 return response.data;
}
}