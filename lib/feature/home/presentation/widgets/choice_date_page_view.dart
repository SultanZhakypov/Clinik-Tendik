import 'package:clinic_tendik/core/components/calendar/custom_calendar.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_time_response/doctor_time_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_widgets.dart';

class ChoiceDatePageView extends StatefulWidget {
  const ChoiceDatePageView({super.key});

  @override
  State<ChoiceDatePageView> createState() => _ChoiceDatePageViewState();
}

class _ChoiceDatePageViewState extends State<ChoiceDatePageView> {
  late CalendarController _calendarController;
  bool _isVisitingTheDoctor = false;
  int _dateTimeIndex = -1;
  DateTime? _selectedTime;

  @override
  void initState() {
    _calendarController = CalendarController();
    _calendarController.addListener(() {
      context
          .read<OnlineDoctorBloc>()
          .add(GetDoctorsTime(date: _calendarController.value));
    });
    super.initState();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onSelectedTime(
    int index, {
    DateTime? selectedTime,
    List<DoctorTimeData>? data,
  }) {
    if (data?[index].available ?? true) {
      _isVisitingTheDoctor = true;
      if (_dateTimeIndex != index) {
        _dateTimeIndex = index;
        _selectedTime = selectedTime;
      } else {
        _dateTimeIndex = -1;
        _selectedTime = null;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Выберите дату', style: TextStyle(fontSize: 16)),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCalendar(controller: _calendarController),
                const SizedBox(height: 4),
                const _TimeTile(
                  title: 'Занятое время',
                  color: AppColors.red,
                ),
                _TimeTile(
                  title: 'Свободное время',
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.green),
                ),
                const _TimeTile(
                  title: 'Время занятое вами',
                  color: AppColors.green,
                ),
                BlocBuilder<OnlineDoctorBloc, OnlineDoctorState>(
                  buildWhen: (previous, current) =>
                      current is DoctorsTimeSuccessState,
                  builder: (context, state) {
                    if (state is DoctorsTimeSuccessState) {
                      if (state.data?.isEmpty == true) {
                        return const Center(
                          child: Text('В этот день приемов нет'),
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 16, bottom: 11),
                              child: Text('Выберите время',
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              child: Wrap(
                                children: List.generate(
                                  state.data?.length ?? 0,
                                  (index) => _TimeCard(
                                    data: state.data?[index],
                                    isSelectedTime: _dateTimeIndex != index,
                                    isAvailable:
                                        state.data?[index].available ?? false,
                                    onChanged: (date) {
                                      _onSelectedTime(
                                        index,
                                        selectedTime: date,
                                        data: state.data,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    }

                    return const CircularProgressIndicator.adaptive();
                  },
                ),
                if (_isVisitingTheDoctor)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'До посещения врача вам необходимо пройти осмотр у медсестры',
                      style: TextStyle(fontSize: 14, color: AppColors.red),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: _selectedTime == null
                    ? null
                    : () => context
                        .read<OnlineDoctorBloc>()
                        .add(GetPatientTalon(registrationDate: _selectedTime)),
                child: const Center(
                  child: Text('Подтвердить'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
