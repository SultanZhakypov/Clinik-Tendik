import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _innController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _innController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _innController.dispose();
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
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AppTextField(
                    controller: _innController,
                    labelText: 'ИНН',
                  ),
                ),
                AppTextField(
                  controller: _passwordController,
                  labelText: 'Пароль',
                ),
                const Spacer(),
                AppButton(
                  onPressed: () {
                    context.router.push(
                      TalonesAndRegisterPageRoute(inn: _innController.text),
                    );
                  },
                  child: const Center(child: Text('Войти')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: InkWell(
                    onTap: () {
                      context.router.pushAndPopUntil(const RegisterPageRoute(),
                          predicate: (_) => false);
                    },
                    child: const Text('Зарегистрироваться'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
