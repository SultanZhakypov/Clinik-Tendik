import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/calendar/custom_calendar.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:clinic_tendik/feature/home/data/models/create_talon/create_talon_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_widgets.dart';

class ChoiceDatePageView extends StatefulWidget {
  const ChoiceDatePageView({
    super.key,
    required this.doctorId,
    required this.departmentName,
  });
  final ValueNotifier<int?> doctorId;
  final ValueNotifier<String?> departmentName;

  @override
  State<ChoiceDatePageView> createState() => _ChoiceDatePageViewState();
}

class _ChoiceDatePageViewState extends State<ChoiceDatePageView> {
  late CalendarController _calendarController;
  bool _isVisitingTheDoctor = false;
  String? _selectedTime;

  @override
  void initState() {
    final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    context.read<HomeBloc>().add(
          HomeEvent.getDoctorsTime(
            date: date,
            doctorId: widget.doctorId.value,
            isOverlay: false,
            nextPage: false,
          ),
        );
    _calendarController = CalendarController();

    _calendarController.addListener(() {
      final date = DateFormat('yyyy-MM-dd').format(_calendarController.value);
      context.read<HomeBloc>().add(
            HomeEvent.getDoctorsTime(
              date: date,
              doctorId: widget.doctorId.value,
              isOverlay: true,
              nextPage: false,
            ),
          );
    });
    super.initState();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LocaleKeys.choose_date.tr(),
              style: const TextStyle(fontSize: 16)),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 16),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: kContainerBorderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCalendar(controller: _calendarController),
                const SizedBox(height: 4),
                _TimeTile(
                  title: LocaleKeys.free_time.tr(),
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.green),
                ),
                _TimeTile(
                  title: LocaleKeys.busy_time.tr(),
                  color: AppColors.green,
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  buildWhen: (previous, current) => current.maybeWhen(
                    orElse: () => false,
                    successDoctorsTime: (data, n) => true,
                  ),
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(
                        height: 64,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                      successDoctorsTime: (data, n) {
                        if (data.freeTimes?.isEmpty ?? true) {
                          return SizedBox(
                            height: 64,
                            child: Center(
                              child: Text(LocaleKeys.empty_appointment.tr()),
                            ),
                          );
                        } else {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, bottom: 11),
                                child: Text(LocaleKeys.choose_time.tr(),
                                    style: const TextStyle(fontSize: 16)),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                child: Wrap(
                                  children: List.generate(
                                    data.freeTimes?.length ?? 0,
                                    (index) => _TimeCard(
                                      data: data.freeTimes?[index],
                                      isSelectedTime: _selectedTime !=
                                          data.freeTimes?[index],
                                      onChanged: (date) {
                                        setState(() {
                                          if (_selectedTime == null) {
                                            _selectedTime = date;
                                            _isVisitingTheDoctor = true;
                                          } else {
                                            if (_selectedTime == date) {
                                              _selectedTime = null;
                                            } else {
                                              _selectedTime = date;
                                            }
                                          }
                                        });
                                      },
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
                if (_isVisitingTheDoctor)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      LocaleKeys.time_destination.tr(),
                      style:
                          const TextStyle(fontSize: 14, color: AppColors.red),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: AppButton(
              key: UniqueKey(),
              padding: const EdgeInsets.symmetric(vertical: 32),
              onPressed: _selectedTime == null
                  ? null
                  : () {
                      StorageHelper.readData('phoneNumber').then((phoneNumber) {
                        StorageHelper.readData('fullName').then((fullName) {
                          fullName as String;
                          context.read<HomeBloc>().add(
                                HomeEvent.createTalon(
                                  CreateTalonRequest(
                                    phoneNumber: phoneNumber,
                                    firstName: fullName.split(' ')[0],
                                    lastName: fullName.split(' ').first,
                                    middleName: fullName.split(' ').last,
                                    doctorId: widget.doctorId.value,
                                    timeOfVisiting: _selectedTime,
                                    departmentName: widget.departmentName.value,
                                    dateOfVisiting: DateFormat('yyyy-MM-dd')
                                        .format(_calendarController.value),
                                  ),
                                ),
                              );
                        });
                      });
                    },
              child: Text(LocaleKeys.checkpoint_button.tr()),
            ),
          ),
        ],
      ),
    );
  }
}
