import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioGenerator {
  DioGenerator() {
    setup();
  }
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'http://18.197.23.153/api/',
      contentType: 'application/json',
      headers: {'Accept': 'application/json'},
    ),
  );

  Dio get dio => _dio;

  void setup() {
    final interceptors = _dio.interceptors;
    interceptors.clear();

    final logInterceptor = LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    );

    final headerInterceptors = QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await StorageHelper.readData('token');
        if (token != null) {
          options.headers.addAll(
            {'Authorization': 'Bearer $token'},
          );
        }

        return handler.next(options);
      },
      onError: (err, handler) async {
        if (err.response?.statusCode == 403) {
          await StorageHelper.clearData();
          handler.reject(
            DioException(
              error: 'TOKEN EXPIRED',
              requestOptions: err.requestOptions,
            ),
          );
        } else if (err.response != null) {
          handler.reject(
            DioException(
              error: err.response?.data['message'],
              requestOptions: err.requestOptions,
            ),
          );
        } else {
          handler.reject(
            DioException(
              error: 'Нету подключения к интернету',
              requestOptions: err.requestOptions,
            ),
          );
        }
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
    );

    interceptors.addAll(
      [
        if (kDebugMode) logInterceptor,
        headerInterceptors,
      ],
    );
  }
}
