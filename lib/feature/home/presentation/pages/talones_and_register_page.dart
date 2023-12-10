import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TalonesAndRegisterPage extends StatefulWidget {
  const TalonesAndRegisterPage({super.key});

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
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Онлайн запись к врачу'),
        ),
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
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.push(const OnlineDoctorPageRoute());
                      },
                      child: const Center(
                        child: Text('Записатьcя'),
                      ),
                    ),
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
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
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
