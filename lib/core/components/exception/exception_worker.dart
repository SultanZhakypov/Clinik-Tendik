import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ExceptionWorker {
  

  static Future<void> processException(dynamic exception,
      { required BuildContext context}) async {
   if (exception is DioException) {
     
   }
  }

}