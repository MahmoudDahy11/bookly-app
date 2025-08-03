import 'package:dio/dio.dart';

class ApiService {
 
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String url}) async {
    var response = await _dio.get(url);
    return response.data;
  }
}
