import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
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

  static Future<void> langShow(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      barrierDismissible: true,
      pageBuilder: (context, animation, secondaryAnimation) {
        return const Text('Page Builder');
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Center(
          child: CupertinoAlertDialog(
            title: Text(LocaleKeys.changeLang.tr()),
            actions: [
              TextButton(
                  onPressed: () {
                    context.setLocale(const Locale('ru', 'RU')).then((value) {
                      StorageHelper.saveData('lang', 'ru');
                      context.router.pop();
                    });
                  },
                  child: const Text('Русский')),
              TextButton(
                onPressed: () {
                  context.setLocale(const Locale('ky', 'KY')).then(
                    (value) {
                      StorageHelper.saveData('lang', 'ky');
                      context.router.pop();
                    },
                  );
                },
                child: const Text(
                  'Кыргызча',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
