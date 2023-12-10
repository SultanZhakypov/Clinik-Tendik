import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _innController;
  late TextEditingController _surnameController;
  late TextEditingController _nameController;
  late TextEditingController _patronymicController;
  late TextEditingController _addressController;
  late TextEditingController _numberController;
  bool? _whatsappNumber = false;

  @override
  void initState() {
    super.initState();

    _innController = TextEditingController();
    _surnameController = TextEditingController();
    _nameController = TextEditingController();
    _patronymicController = TextEditingController();
    _addressController = TextEditingController();
    _numberController = TextEditingController();
  }

  @override
  void dispose() {
    _innController.dispose();
    _surnameController.dispose();
    _nameController.dispose();
    _patronymicController.dispose();
    _addressController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                const SizedBox(height: 56),
                AppTextField(
                  labelText: 'ИНН',
                  controller: _innController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AppTextField(
                    labelText: 'Фамилия',
                    controller: _surnameController,
                  ),
                ),
                AppTextField(
                  labelText: 'Имя',
                  controller: _nameController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AppTextField(
                    labelText: 'Отчество',
                    controller: _patronymicController,
                  ),
                ),
                AppTextField(
                  labelText: 'Адрес',
                  controller: _addressController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AppTextField(
                    labelText: 'Номер телефона',
                    controller: _numberController,
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _whatsappNumber,
                      onChanged: (v) {
                        _whatsappNumber = v;
                        setState(() {});
                      },
                    ),
                    const SizedBox(width: 8),
                    const Text('whatsapp номер на этом телефоне')
                  ],
                ),
                const Spacer(),
                AppButton(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  onPressed: () {
                    context.router.push(const AuthPageRoute());
                  },
                  child: const Center(
                    child: Text('Зарегистрироваться'),
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
