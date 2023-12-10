import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:share_plus/share_plus.dart';

class TalonPage extends StatelessWidget {
  const TalonPage({super.key, this.data});

  final PatientRegistrationData? data;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnlineDoctorBloc, OnlineDoctorState>(
      listener: (context, state) {
        if (state is OnlineDoctorLoadingState) {
          if (state.isOverlay) {
            LoadingOverlay.showLoadingOverlay(context);
          }
        }
        if (state is DeleteTalonSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          context.router.pop();
        }
        if (state is PDFTalonSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          Share.shareXFiles([XFile(state.path)]);
        }
        if (state is OnlineDoctorExceptionState) {
          LoadingOverlay.removeLoadingOverlay();
          // ExceptionWorker.processExceptionV2(context, state.exception);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.read<OnlineDoctorBloc>().add(const GetListTalones());
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
                        child: Text('Талон на прием',
                            style: TextStyle(fontSize: 16)),
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                          text: data?.ozName,
                          children: [
                            TextSpan(text: data?.ozParentName),
                          ],
                          style: const TextStyle(fontSize: 14),
                        )),
                      ),
                      _TextTile(
                        title: 'Адрес',
                        description: data?.ozAdress,
                      ),
                      _TextTile(
                        title: 'Специалист',
                        description: data?.doctorName,
                      ),
                      _TextTile(
                        title: 'Специальность',
                        description: data?.doctorSpecialnost,
                      ),
                      _TextTile(
                        title: 'Этаж/Кабинет',
                        description: data?.etajCabinet,
                      ),
                      _TextTile(
                        title: 'Пациент',
                        description: data?.patientFio,
                      ),
                      _TextTile(
                        title: 'Дата/Время',
                        description: data?.dataVremya,
                      ),
                      _TextTile(
                        title: 'Статус ОМС',
                        description: data?.statusOms,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Дата формирования талона: ${data?.dataCreate}',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Image.memory(
                          base64Decode(data?.byteQr ?? ''),
                          scale: 2,
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<OnlineDoctorBloc>()
                            .add(GetTalonPdf(id: data?.id)),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: AppColors.purple,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                Icons.upload,
                                color: AppColors.white,
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                'Поделиться',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) => const _Dialog(),
                        ).then((value) {
                          if (value) {
                            context
                                .read<OnlineDoctorBloc>()
                                .add(DeleteTalon(id: data?.id));
                          }
                        });
                      },
                      child: const Center(
                        child: Text('Отменить запись'),
                      ),
                    ),
                  ),
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
            const Text('Вы уверены, что хотите отменить запись?',
                style: TextStyle(fontSize: 18)),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              child: SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.pop(true);
                  },
                  child: const Center(
                    child: Text('Продолжить'),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => context.router.pop(false),
              child: const Text('Отмена'),
            )
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
          Text(title, style: const TextStyle(fontSize: 14)),
          Text(
            description ?? '',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
