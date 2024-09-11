import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/dialogs/custom_show_dialog.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/core/constants/images.dart';
import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TalonesAndRegisterPage extends StatefulWidget {
  const TalonesAndRegisterPage({
    super.key,
  });

  @override
  State<TalonesAndRegisterPage> createState() => _TalonesAndRegisterPageState();
}

class _TalonesAndRegisterPageState extends State<TalonesAndRegisterPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.index == 0) {
        _getTalones();
      } else {
        context.read<HomeBloc>().add(const HomeEvent.getResultData());
      }
    });

    _getTalones();
    super.initState();
  }

  void _update() {
    if (_tabController.index == 0) {
      _getTalones();
    } else {
      context.read<HomeBloc>().add(const HomeEvent.getResultData());
    }
  }

  Future<void> _getTalones() async =>
      context.read<HomeBloc>().add(const HomeEvent.getTalonList());

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
          successTalon: (data, afterCreate) {
            if (!afterCreate) {
              LoadingOverlay.removeLoadingOverlay();
              context.router.push(TalonPageRoute(data: data));
            }
          },
          successResultNumber: (resultNumber) {
            LoadingOverlay.removeLoadingOverlay();

            context.router.push(
                PdfViewPageRoute(pdfPath: resultNumber.pdgFileCheque ?? ''));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (v) {
              _update();
            },
            controller: _tabController,
            dividerColor: AppColors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.purple,
            ),
            labelColor: Colors.white,
            isScrollable: false,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            indicatorPadding: const EdgeInsets.all(0),
            unselectedLabelStyle: const TextStyle(fontSize: 16),
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            tabs: [
              Tab(
                text: LocaleKeys.zapisi.tr(),
              ),
              Tab(
                text: LocaleKeys.analises.tr(),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ClipRRect(
                borderRadius: kCircleBorderRadius,
                child: Image.asset(Images.logoTendik)),
          ),
          title: Text(LocaleKeys.appBarTitle.tr()),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  CustomShowDialog.langShow(context)
                      .then((value) => setState(() {}));
                },
                icon: const Icon(Icons.language_outlined),
              ),
            ),
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
                              title: Text(LocaleKeys.exit_dialog.tr()),
                              actions: [
                                TextButton(
                                    onPressed: context.router.pop,
                                    child: Text(LocaleKeys.cancel_button.tr())),
                                TextButton(
                                  onPressed: () {
                                    StorageHelper.removeData('token').then(
                                      (value) => context.router.pushAndPopUntil(
                                          const AuthPageRoute(),
                                          predicate: (_) => false),
                                    );
                                  },
                                  child: Text(
                                    LocaleKeys.exit_confirm.tr(),
                                    style: const TextStyle(color: Colors.red),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            RefreshIndicator.adaptive(
              onRefresh: _getTalones,
              child: _AppointmentTab(_update),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) {
                return current.maybeWhen(
                  orElse: () => false,
                  successgetResultData: (data) => true,
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
                  successgetResultData: (data) {
                    if (data?.isEmpty == true) {
                      return Center(
                        child: Text(LocaleKeys.is_empty_analzzye.tr()),
                      );
                    } else {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              itemCount: data?.length ?? 0,
                              padding: const EdgeInsets.all(16),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                              itemBuilder: (context, index) => Card(
                                elevation: 5,
                                color: AppColors.white,
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  onTap: () {
                                    context.read<HomeBloc>().add(
                                          HomeEvent.getResultNumber(
                                              data![index].resultNumber!),
                                        );
                                  },
                                  title:
                                      Text(data?[index].resultNumber ?? 'null'),
                                  subtitle: Text(
                                      '${data?[index].dateOfResult} ${data?[index].timeOfResult}'),
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
          ],
        ),
      ),
    );
  }
}

class _AppointmentTab extends StatelessWidget {
  const _AppointmentTab(this.onTap);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) {
              return current.maybeWhen(
                orElse: () => false,
                error: (error) => true,
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
                error: (error) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onTap,
                        icon: const Icon(Icons.replay_circle_filled_rounded),
                      ),
                      Text(LocaleKeys.repeat.tr()),
                    ],
                  );
                },
                successTalonList: (data) {
                  if (data.isEmpty) {
                    return Column(
                      children: [
                        const Spacer(),
                        Center(
                          child: Text(LocaleKeys.empty_appointment.tr()),
                        ),
                        const Spacer(),
                        AppButton(
                          onPressed: () {
                            context.router.push(const OnlineDoctorPageRoute());
                          },
                          child: Text(LocaleKeys.appointment_button.tr()),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          child: ListView.separated(
                            padding: const EdgeInsets.only(bottom: 16),
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
                        AppButton(
                          onPressed: () {
                            context.router.push(const OnlineDoctorPageRoute());
                          },
                          child: Text(LocaleKeys.appointment_button.tr()),
                        ),
                      ],
                    );
                  }
                },
              );
            },
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
    return Container(
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
        title: Text(
          LocaleKeys.talon_title.tr(),
          style: const TextStyle(fontSize: 16),
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
                  LocaleKeys.statusCancel.tr(),
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
