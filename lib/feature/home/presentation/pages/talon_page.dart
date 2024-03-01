import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
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
            context.router.pop();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(const HomeEvent.getTalonList());
              context.router
                  .popUntilRouteWithName(TalonesAndRegisterPageRoute.name);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Онлайн запись к врачу'),
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
                      const Center(
                        child: Text(
                          'Талон на прием',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      _TextTile(
                        title: 'Время',
                        description: '${data?.localDate} ${data?.time}',
                      ),
                      _TextTile(
                        title: 'Специалист',
                        description: data?.doctorFullName,
                      ),
                      _TextTile(
                        title: 'Специальность',
                        description: data?.departmentName,
                      ),
                      _TextTile(
                        title: 'Номер телефона',
                        description: data?.phoneNumber,
                      ),
                      _TextTile(
                        title: 'Пациент',
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
                  child: const Text('Отменить запись'),
                ),
              ],
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
            const Text(
              'Вы уверены, что хотите отменить запись?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            AppButton(
              buttonstyle: BUTTONSTYLE.ALERT,
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              onPressed: () {
                context.router.pop(true);
              },
              child: const Text('Продолжить'),
            ),
            AppButton(
              buttonstyle: BUTTONSTYLE.TERTIARY,
              onPressed: () {
                context.router.pop(false);
              },
              child: const Text('Отмена'),
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
