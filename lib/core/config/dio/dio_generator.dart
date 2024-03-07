import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
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
      headers: {'Accept': '*/*'},
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
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
        final lang = await StorageHelper.readData('lang');
        if (token != null) {
          options.headers.addAll(
            {
              'Authorization': 'Bearer $token',
              'accept-language': lang ?? 'ru',
            },
          );
        } else {
          options.headers.addAll(
            {
              'accept-language': lang ?? 'ru',
            },
          );
        }

        return handler.next(options);
      },
      onError: (err, handler) async {
        if (err.response?.statusCode == 403) {
          final token = await StorageHelper.readData('token');
          if (token != null) {
            await StorageHelper.removeData('token');
            handler.reject(
              DioException(
                error: 'TOKEN EXPIRED',
                requestOptions: err.requestOptions,
              ),
            );
          } else {
            handler.reject(
              DioException(
                error: err.response?.data['message'],
                requestOptions: err.requestOptions,
              ),
            );
          }
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
              error: LocaleKeys.no_internet.tr(),
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
