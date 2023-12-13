import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/core/constants/images.dart';
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
            ),
      ),
      body: body,
    );
  }
}
