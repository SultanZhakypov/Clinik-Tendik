import 'dart:io';

import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class PdfHelper {
  static Future<String?> downloadPdf({
    required String currentUrl,
    required String pdfPathName,
    dynamic formData,
    Map<String, dynamic>? queryParameters,
    String? method,
    ResponseType? responseType,
    bool otherUrl = false,
  }) async {
    var lang = StorageHelper.readData('lang');
    var token = StorageHelper.readData('token');

    final dio = Dio();

    dio.options.headers = {
      'Authorization': 'Bearer $token',
      'accept-language': lang,
    };

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
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
        'http://18.197.23.153/api/$currentUrl',
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
