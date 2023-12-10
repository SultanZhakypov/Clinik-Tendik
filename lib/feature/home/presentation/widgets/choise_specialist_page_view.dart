import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_list_response/doctor_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiceSpecialistPageView extends StatefulWidget {
  const ChoiceSpecialistPageView({super.key});

  @override
  State<ChoiceSpecialistPageView> createState() =>
      _ChoiceSpecialistPageViewState();
}

class _ChoiceSpecialistPageViewState extends State<ChoiceSpecialistPageView> {
  late TextEditingController _searchController;
  int _isSelectedIndex = -1;

  @override
  void initState() {
    _searchController = TextEditingController();
    context.read<OnlineDoctorBloc>().add(const GetDoctorsList());
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onTap(int index) {
    if (_isSelectedIndex == index) {
      _isSelectedIndex = -1;
    } else {
      _isSelectedIndex = index;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Выбор специалиста', style: TextStyle(fontSize: 16)),
          AppTextField(
            hintText: 'Поиск по ФИО',
            controller: _searchController,
            onChanged: (v) {
              context
                  .read<OnlineDoctorBloc>()
                  .add(SearchDoctorsList(_searchController.text));
            },
          ),
          const SizedBox(height: 16),
          const Text('Специалисты', style: TextStyle(fontSize: 16)),
          const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Divider(),
          ),
          BlocBuilder<OnlineDoctorBloc, OnlineDoctorState>(
            buildWhen: (previous, current) =>
                current is DoctorsListSuccessState ||
                current is OnlineDoctorExceptionState,
            builder: (context, state) {
              if (state is OnlineDoctorExceptionState) {
                return Center(
                  child: Text(state.exception.toString()),
                );
              }
              if (state is DoctorsListSuccessState) {
                return Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(top: 18),
                    itemCount: state.data?.length ?? 0,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) => _SpecialistItem(
                      data: state.data?[index],
                      isSelected: _isSelectedIndex == index,
                      onTap: () => _onTap(index),
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          ),
          AppButton(
            padding: const EdgeInsets.only(bottom: 32, top: 16),
            onPressed: _isSelectedIndex == -1
                ? null
                : () {
                    context.read<OnlineDoctorBloc>().add(GetDoctorsTime(
                          date: DateTime.now(),
                          index: _isSelectedIndex,
                          nextPage: true,
                        ));
                  },
            child: const Center(
              child: Text('Далее'),
            ),
          ),
        ],
      ),
    );
  }
}

class _SpecialistItem extends StatelessWidget {
  const _SpecialistItem({
    required this.onTap,
    required this.isSelected,
    this.data,
  });

  final Function() onTap;
  final bool isSelected;
  final SpecialistResult? data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data?.applicationUserFio ?? '',
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? AppColors.green : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: RichText(
                text: TextSpan(
                  text: '${data?.dictDoljnostName}/ ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: data?.organisationName,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
