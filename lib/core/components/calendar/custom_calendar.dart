import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({
    super.key,
    required this.controller,
  });
  final CalendarController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: controller,
      builder: (_, value, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: kContainerBorderRadius,
            border: Border.all(color: const Color(0xffCCD5E1)),
            color: AppColors.white,
          ),
          child: TableCalendar(
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: AppColors.green,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: const HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
            ),
            currentDay: value,
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2040, 3, 14),
            focusedDay: DateTime.now(),
            selectedDayPredicate: controller.selectedDayPredicate,
            onDaySelected: controller.onDaySelected,
          ),
        );
      },
    );
  }
}

class CalendarController extends ValueNotifier<DateTime> {
  CalendarController() : super(DateTime.now());

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    value = selectedDay;
  }

  bool selectedDayPredicate(DateTime day) {
    return isSameDay(value, day);
  }
}
