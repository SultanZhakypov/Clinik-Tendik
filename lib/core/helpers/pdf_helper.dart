import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

//TODO : baseurl
class Utils {
  /* get memory pdf */

  static Future<String?> downloadPdf({
    required String currentUrl,
    required String pdfPathName,
    dynamic formData,
    Map<String, dynamic>? queryParameters,
    String? method,
    ResponseType? responseType,
    bool otherUrl = false,
  }) async {
    // final token = await ApiHelper().loadTokens();
    final dio = Dio();

    dio.options
      // ..headers = {'Authorization': 'Bearer ${token.authToken}'}
      ..connectTimeout = const Duration(milliseconds: 55000)
      ..receiveTimeout = const Duration(milliseconds: 55000)
      ..validateStatus = (status) => status != null && status == 200;

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          if (kDebugMode) {
            print(object.toString());
          }
        },
      ),
    );
    final temp = await getTemporaryDirectory();
    final file = File('${temp.path}/$pdfPathName');
    if (otherUrl) {
      await dio
          .download(
        currentUrl,
        file.path,
        queryParameters: queryParameters,
        data: formData,
        options: Options(
          method: method ?? 'GET',
          responseType: responseType,
        ),
      )
          .then(
        (value) {},
        onError: (error) {
          throw error;
        },
      );
    } else {
      await dio
          .download(
        currentUrl,
        file.path,
        queryParameters: queryParameters,
        data: formData,
        options: Options(
          method: method ?? 'GET',
          responseType: responseType,
        ),
      )
          .then(
        (value) {},
        onError: (error) {
          throw error;
        },
      );
    }
    if (await file.length() > 500) {
      return file.path;
    }
    return null;
  }
}
