import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/feature/home/presentation/widgets/choice_date_page_view.dart';
import 'package:clinic_tendik/feature/home/presentation/widgets/choise_specialist_page_view.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnlineDoctorPage extends StatefulWidget {
  const OnlineDoctorPage({super.key});

  @override
  State<OnlineDoctorPage> createState() => _OnlineDoctorPageState();
}

class _OnlineDoctorPageState extends State<OnlineDoctorPage> {
  late PageController _pageController;
  static const _durationPage = Duration(milliseconds: 350);
  final ValueNotifier<int?> doctorId = ValueNotifier<int?>(null);
  final ValueNotifier<String?> departmentName = ValueNotifier<String?>(null);

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void _onPop() {
    if (_pageController.page == _pageController.initialPage) {
      context.router.navigate(const TalonesAndRegisterPageRoute());
    } else {
      _pageController.previousPage(
        duration: _durationPage,
        curve: Curves.ease,
      );
    }
  }

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
            if (afterCreate) {
              LoadingOverlay.removeLoadingOverlay();
              context.router.push(TalonPageRoute(data: data));
            }
          },
          successDoctorsTime: (data, nextpage) {
            LoadingOverlay.removeLoadingOverlay();
            if (nextpage) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeIn,
              );
            }
          },
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            LocaleKeys.online_app_doctor.tr(),
          ),
        ),
        body: WillPopScope(
          onWillPop: () async {
            _onPop();
            return false;
          },
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 2,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 4,
                      activeDotColor: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      ChoiceSpecialistPageView(
                        doctorId: doctorId,
                        departmentName: departmentName,
                        pageController: _pageController,
                      ),
                      ChoiceDatePageView(
                        departmentName: departmentName,
                        doctorId: doctorId,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
