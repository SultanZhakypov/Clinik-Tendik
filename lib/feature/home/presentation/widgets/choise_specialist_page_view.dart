import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: AppTextField(
              hintText: 'Поиск по ФИО',
              controller: _searchController,
              onChanged: (v) {
                context
                    .read<OnlineDoctorBloc>()
                    .add(SearchDoctorsList(_searchController.text));
              },
            ),
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
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
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
            child: const Text('Далее'),
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
      borderRadius: kContainerBorderRadius,
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: kContainerBorderRadius,
          border: !isSelected ? null : Border.all(color: AppColors.purple),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CachedNetworkImage(
                imageUrl: data?.imagePath ?? '',
                height: 56,
                width: 56,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: kCircleBorderRadius,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) {
                  return const Icon(Icons.error);
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data?.applicationUserFio ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? AppColors.purple : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: RichText(
                    text: TextSpan(
                      text: '${data?.dictDoljnostName}/ ',
                      style: TextStyle(
                          color: isSelected ? AppColors.purple : Colors.black),
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
          ],
        ),
      ),
    );
  }
}
