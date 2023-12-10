import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPageView extends StatefulWidget {
  const InitialPageView({super.key});

  @override
  State<InitialPageView> createState() => _InitialPageViewState();
}

class _InitialPageViewState extends State<InitialPageView> {
  late TextEditingController _innController;
  late MaskedTextController _numberController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _innController = TextEditingController();
    _numberController = MaskedTextController(mask: '0000 000 000');

    super.initState();
  }

  @override
  void dispose() {
    _numberController.dispose();
    _innController.dispose();
    super.dispose();
  }

  void _onNext() {
    if (_formKey.currentState?.validate() == true) {
      context.read<OnlineDoctorBloc>().add(GetPatientInfoEvent(
            inn: _innController.text,
            number: _numberController.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ваши данные', style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: AppTextField(
                  keyboardType: TextInputType.number,
                  maxLength: 14,
                  labelText: 'ПИН(ИНН)',
                  controller: _innController,
                  validator: (val) {
                    if (val?.isEmpty == true) {
                      return 'Обязательное поле';
                    }
                    return null;
                  }),
            ),
            AppTextField(
                keyboardType: TextInputType.number,
                maxLength: 14,
                labelText: 'Номер телефона',
                controller: _numberController,
                validator: (val) {
                  if (val?.isEmpty == true) {
                    return 'Обязательное поле';
                  }
                  return null;
                }),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: _onNext,
                  child: const Center(
                    child: Text('Далее'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
