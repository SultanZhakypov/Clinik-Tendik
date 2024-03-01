import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/appbar/app_scaffold.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TalonesAndRegisterPage extends StatefulWidget {
  const TalonesAndRegisterPage({
    super.key,
  });

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
      context.read<HomeBloc>().add(const HomeEvent.getTalonList());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: _getTalones,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlocConsumer<HomeBloc, HomeState>(
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
                      successTalon: (data) {
                        LoadingOverlay.removeLoadingOverlay();
                        context.router.push(TalonPageRoute(data: data));
                      },
                    );
                  },
                  buildWhen: (previous, current) {
                    return current.maybeWhen(
                      orElse: () => false,
                      successTalonList: (data) => true,
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator.adaptive(),
                        ],
                      ),
                      successTalonList: (data) {
                        if (data.isEmpty) {
                          return const Center(
                            child: Text('В этот день приемов нет'),
                          );
                        } else {
                          return Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: data.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 8),
                                  itemBuilder: (context, index) => _TalonItem(
                                    data: data[index],
                                    onTap: () => context.read<HomeBloc>().add(
                                          HomeEvent.getTalonDetail(
                                            data[index].id ?? 0,
                                          ),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    );
                  },
                ),
                AppButton(
                  onPressed: () {
                    context.router.push(const OnlineDoctorPageRoute());
                  },
                  child: const Text('Записатьcя'),
                ),
              ],
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
  final TalonListResponse? data;

  @override
  Widget build(BuildContext context) {
    bool status = data?.status == 'Отменен';
    return Ink(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: kContainerBorderRadius,
        border: status ? Border.all(color: Colors.red) : null,
      ),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: kContainerBorderRadius,
        ),
        onTap: status ? null : onTap,
        title: const Text(
          'Талон на прием',
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                '${data?.doctorFullName}',
                style: const TextStyle(fontSize: 14),
              ),
            ),
            if (status)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '${data?.status}',
                  style: const TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
