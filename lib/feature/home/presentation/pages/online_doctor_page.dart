import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info_model/patient_info_model.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/feature/home/presentation/widgets/choice_date_page_view.dart';
import 'package:clinic_tendik/feature/home/presentation/widgets/choise_specialist_page_view.dart';
import 'package:clinic_tendik/feature/home/presentation/widgets/initial_page_view.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnlineDoctorBloc, OnlineDoctorState>(
      listener: (context, state) {
        if (state is OnlineDoctorLoadingState) {
          if (state.isOverlay) {
            LoadingOverlay.showLoadingOverlay(context);
          }
        }
        if (state is OnlineDoctorExceptionState) {
          LoadingOverlay.removeLoadingOverlay();
          // ExceptionWorker.processExceptionV2(context, state.exception);
        }

        // INITIAL PAGEVIEW
        if (state is OnlineDoctorSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => _Dialog(state.data),
          ).then((value) {
            if (value) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.ease,
              );
            }
          });
        }

        // SPECIALIST PAGEVIEW
        if (state is DoctorsTimeSuccessState) {
          LoadingOverlay.removeLoadingOverlay();
          if (state.nextPage) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 350),
              curve: Curves.ease,
            );
          }
        }
        //DATE PAGEVIEW
        if (state is PatientRegisterSuccessState) {
          LoadingOverlay.removeLoadingOverlay();

          context.router.push(TalonPageRoute(data: state.data));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Онлайн запись к врачу',
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
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
                  children: const [
                    InitialPageView(),
                    ChoiceSpecialistPageView(),
                    ChoiceDatePageView(),
                  ],
                ),
              )
            ],
          ),
        ),
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
