import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wss_chat/common/common_types.dart';
import 'package:wss_chat/models/user.dart';

class AuthorizeApi {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: chatEnvironmet.environmentConfig.baseAddress,
    connectTimeout: 30000,
    sendTimeout: 30000,
    receiveTimeout: 30000,
  ));
  Future<String> login({required String name, required String password}) async {
    try {
      var response = await _dio.post('api/login/',
          queryParameters: {'login': name, 'password': password});
      return _parseResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> logout({required String name}) async {
    return true;
  }

  Future<String> register({required User user}) async {
    var response =
        await _dio.post('', queryParameters: {'login': '', 'password': ''});
    return _parseResponse(response);
  }

  String _parseResponse(Response response) {
    return jsonDecode(response.data)['token'];
  }
}
