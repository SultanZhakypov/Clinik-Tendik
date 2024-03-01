import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/core/constants/images.dart';
import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.body,
    this.appBar,
    this.appBarTitle,
  });

  final Widget? body;
  final PreferredSize? appBar;
  final String? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: appBar ??
            AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ClipRRect(
                    borderRadius: kCircleBorderRadius,
                    child: Image.asset(Images.logoTendik)),
              ),
              title: Text(appBarTitle ?? 'Клиника тендик'),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () {
                      showGeneralDialog(
                        context: context,
                        barrierLabel: '',
                        barrierDismissible: true,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const Text('Page Builder');
                        },
                        transitionBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: Tween<double>(begin: 0.0, end: 1.0)
                                .animate(animation),
                            child: FadeTransition(
                              opacity: Tween<double>(begin: 0.0, end: 1.0)
                                  .animate(animation),
                              child: Center(
                                child: CupertinoAlertDialog(
                                  title: const Text(
                                      'Вы действительно хотите выйти'),
                                  actions: [
                                    TextButton(
                                        onPressed: context.router.pop,
                                        child: const Text('Отмена')),
                                    TextButton(
                                      onPressed: () {
                                        StorageHelper.clearData().then(
                                          (value) => context.router
                                              .pushAndPopUntil(
                                                  const AuthPageRoute(),
                                                  predicate: (_) => false),
                                        );
                                      },
                                      child: const Text(
                                        'Выйти',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Icon(
                      Icons.exit_to_app_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
      ),
      body: body,
    );
  }
}
