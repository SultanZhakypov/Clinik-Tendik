import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/appbar/app_scaffold.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/core/constants/images.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info_model/patient_info_model.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TalonesAndRegisterPage extends StatefulWidget {
  const TalonesAndRegisterPage({
    super.key,
    required this.inn,
  });
  final String inn;

  @override
  State<TalonesAndRegisterPage> createState() => _TalonesAndRegisterPageState();
}

class _TalonesAndRegisterPageState extends State<TalonesAndRegisterPage> {
  @override
  void initState() {
    _getTalones();
    super.initState();
  }

  Future<void> _getTalones() async =>
      context.read<OnlineDoctorBloc>().add(const GetListTalones());

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnlineDoctorBloc, OnlineDoctorState>(
      listener: (context, state) {
        if (state is OnlineDoctorLoadingState) {
          if (state.isOverlay) {
            LoadingOverlay.showLoadingOverlay(context);
          }
        }
        if (state is TalonesSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          context.router.push(TalonPageRoute(data: state.data));
        }
        if (state is OnlineDoctorExceptionState) {
          LoadingOverlay.removeLoadingOverlay();
          // ExceptionWorker.processExceptionV2(context, state.exception);
        }
        if (state is OnlineDoctorSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => _Dialog(state.data),
          ).then((value) {
            if (value) {
              context.router.push(const OnlineDoctorPageRoute());
            }
          });
        }
      },
      child: AppScaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: _getTalones,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  BlocBuilder<OnlineDoctorBloc, OnlineDoctorState>(
                    buildWhen: (previous, current) =>
                        current is ListTalonesSuccessState,
                    builder: (context, state) {
                      if (state is ListTalonesSuccessState) {
                        if (state.data?.isEmpty == true) {
                          return const Center(
                            child: Text('В этот день приемов нет'),
                          );
                        } else {
                          return Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: state.data?.length ?? 0,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 8),
                                  itemBuilder: (context, index) => _TalonItem(
                                    data: state.data?[index],
                                    onTap: () => context
                                        .read<OnlineDoctorBloc>()
                                        .add(
                                          GetTalones(id: state.data?[index].id),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      }

                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  ),
                  AppButton(
                    onPressed: () {
                      context.read<OnlineDoctorBloc>().add(GetPatientInfoEvent(
                            inn: widget.inn,
                            number: '0123123',
                          ));
                    },
                    child: const Text('Записатьcя'),
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

class _TalonItem extends StatelessWidget {
  const _TalonItem({required this.onTap, this.data});

  final VoidCallback onTap;
  final PatientRegistrationData? data;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: kContainerBorderRadius,
      ),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: kContainerBorderRadius,
        ),
        onTap: onTap,
        title: const Text(
          'Талон на прием',
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          '${data?.ozName} ${data?.ozParentName}',
          style: const TextStyle(fontSize: 14),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class _Dialog extends StatelessWidget {
  const _Dialog(this.data);

  final PatientInfoData? data;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TextTile(
              title: 'Вы приписаны\nГоловная организация: ',
              description: data?.parentOrganisationNameCode,
            ),
            _TextTile(
              title: 'Организация: ',
              description: data?.organisationNameCode,
            ),
            _TextTile(
              title: 'Статус ОМС: ',
              description: data?.oms,
            ),
            AppButton(
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              onPressed: () {
                context.router.pop(true);
              },
              child: const Text('Продолжить'),
            ),
            AppButton(
              buttonstyle: BUTTONSTYLE.TERTIARY,
              onPressed: () => context.router.pop(false),
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
    this.title,
    this.description,
  });

  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: title,
          style: const TextStyle(fontSize: 18, color: Colors.black),
          children: [
            TextSpan(
              text: description,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
