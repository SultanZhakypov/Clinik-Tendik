import 'package:another_flushbar/flushbar.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomShowDialog {
  static void showFlushbar(String message, {required BuildContext context}) {
    Flushbar(
      backgroundColor: AppColors.purple,
      borderRadius: BorderRadius.circular(10),
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      flushbarPosition: FlushbarPosition.BOTTOM,
      flushbarStyle: FlushbarStyle.FLOATING,
      isDismissible: true,
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.all(24),
      messageText: Text(
        message,
        style: const TextStyle(
          color: AppColors.white,
        ),
      ),
    ).show(context);
  }
}
