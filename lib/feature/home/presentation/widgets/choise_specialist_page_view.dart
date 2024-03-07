import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/constants/app_radius.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_list/doctors_list_response.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiceSpecialistPageView extends StatefulWidget {
  const ChoiceSpecialistPageView({
    super.key,
    required this.pageController,
    required this.doctorId,
    required this.departmentName,
  });
  final PageController pageController;
  final ValueNotifier<int?> doctorId;
  final ValueNotifier<String?> departmentName;

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
    context.read<HomeBloc>().add(const HomeEvent.getDoctorList());
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onTap(int index, {required DoctorsListResponse data}) {
    if (_isSelectedIndex == index) {
      _isSelectedIndex = -1;
      widget.doctorId.value = null;
    } else {
      _isSelectedIndex = index;
      widget.doctorId.value = data.id;
      widget.departmentName.value = data.departmentName;
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
          Text(LocaleKeys.choose_specialist.tr(),
              style: const TextStyle(fontSize: 16)),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: AppTextField(
              hintText: LocaleKeys.search_fio.tr(),
              controller: _searchController,
              onChanged: (v) {
                context.read<HomeBloc>().add(
                      HomeEvent.searchDoctorList(_searchController.text),
                    );
              },
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) => current.maybeWhen(
              orElse: () => false,
              successDoctorList: (data) => true,
            ),
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Expanded(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
                successDoctorList: (data) {
                  return data.isEmpty
                      ? Expanded(
                          child: Center(
                            child: Text(LocaleKeys.is_empty.tr()),
                          ),
                        )
                      : Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.6,
                                child: ListView.separated(
                                  padding: const EdgeInsets.only(top: 18),
                                  itemCount: data.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 12),
                                  itemBuilder: (context, index) =>
                                      _SpecialistItem(
                                    data: data[index],
                                    isSelected: _isSelectedIndex == index,
                                    onTap: () =>
                                        _onTap(index, data: data[index]),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: AppButton(
                                  onPressed: widget.doctorId.value == null
                                      ? null
                                      : () async {
                                          widget.pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 350),
                                            curve: Curves.easeIn,
                                          );
                                        },
                                  child: Text(LocaleKeys.dalee_button.tr()),
                                ),
                              ),
                            ],
                          ),
                        );
                },
              );
            },
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
  final DoctorsListResponse? data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: kContainerBorderRadius,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: kContainerBorderRadius,
          border: !isSelected ? null : Border.all(color: AppColors.purple),
        ),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CachedNetworkImage(
                  imageUrl: data?.image ?? '',
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
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data?.firstName} ${data?.lastName}',
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? AppColors.purple : null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '',
                        style: TextStyle(
                            color:
                                isSelected ? AppColors.purple : Colors.black),
                        children: [
                          TextSpan(
                            text: data?.position,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
