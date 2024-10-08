import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/volumes';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({ required String endpoints}) async {
    var response = await _dio.get('$_baseUrl/$endpoints');
    return response.data;
  }

}
