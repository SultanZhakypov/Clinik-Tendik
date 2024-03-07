import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TalonPage extends StatelessWidget {
  const TalonPage({super.key, this.data});

  final TalonResponse? data;

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: (isOverlay) {
            if (isOverlay == true) {
              LoadingOverlay.showLoadingOverlay(context);
            }
          },
          error: (error) {
            LoadingOverlay.removeLoadingOverlay();
            ExceptionWorker.processException(context, error: error);
          },
          successDeleteTalon: () {
            LoadingOverlay.removeLoadingOverlay();
            context.read<HomeBloc>().add(const HomeEvent.getTalonList());
            AutoRouter.of(context).pushAndPopUntil(
              const TalonesAndRegisterPageRoute(),
              predicate: (route) => false,
            );
          },
        );
      },
      child: WillPopScope(
        onWillPop: () async {
          context.read<HomeBloc>().add(const HomeEvent.getTalonList());
          AutoRouter.of(context).pushAndPopUntil(
            const TalonesAndRegisterPageRoute(),
            predicate: (route) => false,
          );
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                context.read<HomeBloc>().add(const HomeEvent.getTalonList());
                AutoRouter.of(context).pushAndPopUntil(
                  const TalonesAndRegisterPageRoute(),
                  predicate: (_) => false,
                );
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(LocaleKeys.online_app_doctor.tr()),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Text(
                            LocaleKeys.talon_title.tr(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        _TextTile(
                          title: LocaleKeys.time.tr(),
                          description: '${data?.localDate} ${data?.time}',
                        ),
                        _TextTile(
                          title: LocaleKeys.specialist.tr(),
                          description: data?.doctorFullName,
                        ),
                        _TextTile(
                          title: LocaleKeys.specialnost.tr(),
                          description: data?.departmentName,
                        ),
                        _TextTile(
                          title: LocaleKeys.phone_number.tr(),
                          description: data?.phoneNumber,
                        ),
                        _TextTile(
                          title: LocaleKeys.patient.tr(),
                          description: '${data?.firstName} ${data?.lastName}',
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    buttonstyle: BUTTONSTYLE.ALERT,
                    padding: const EdgeInsets.all(16),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => const _Dialog(),
                      ).then((value) {
                        if (value) {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.deleteTalon(data?.id ?? 0));
                        }
                      });
                    },
                    child: Text(LocaleKeys.cancel_talon.tr()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Dialog extends StatelessWidget {
  const _Dialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.cancel_talon_dialog.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            AppButton(
              buttonstyle: BUTTONSTYLE.ALERT,
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              onPressed: () {
                context.router.pop(true);
              },
              child: Text(LocaleKeys.next_button2.tr()),
            ),
            AppButton(
              buttonstyle: BUTTONSTYLE.TERTIARY,
              onPressed: () {
                context.router.pop(false);
              },
              child: Text(LocaleKeys.cancel_button2.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextTile extends StatelessWidget {
  const _TextTile({
    required this.title,
    this.description,
  });

  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          Text(
            description ?? '',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
