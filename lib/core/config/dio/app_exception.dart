import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/dialogs/custom_show_dialog.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AppException implements Exception {
  String? message;

  AppException({this.message});
}

class ExceptionWorker {
  static processException(
    BuildContext context, {
    required dynamic error,
  }) {
    if (error is DioException) {
      if (error.error as String == 'TOKEN EXPIRED') {
        context.router
            .pushAndPopUntil(const AuthPageRoute(), predicate: (_) => false);
      }
      CustomShowDialog.showFlushbar(
        error.error.toString(),
        context: context,
      );
    } else {
      CustomShowDialog.showFlushbar(
        error.toString(),
        context: context,
      );
    }
  }
}
