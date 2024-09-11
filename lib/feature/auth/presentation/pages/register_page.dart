import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/register_response.dart';
import 'package:clinic_tendik/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RegisterPage extends StatefulWidget with AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AuthBloc>(),
      child: this,
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _middleName;
  late TextEditingController _email;
  late TextEditingController _phoneNumber;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();

    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _middleName = TextEditingController();
    _email = TextEditingController();
    _phoneNumber = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _middleName.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    LoadingOverlay.removeLoadingOverlay();

    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: (isOverlay) {
            if (isOverlay == true) {
              LoadingOverlay.showLoadingOverlay(context);
            }
          },
          error: (error) {
            LoadingOverlay.removeLoadingOverlay();
            ExceptionWorker.processException(context, error: error);
          },
          successSignUp: (data) {
            LoadingOverlay.removeLoadingOverlay();
            context.router.pushAndPopUntil(
              const TalonesAndRegisterPageRoute(),
              predicate: (_) => false,
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.registration.tr(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.83,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    labelText: LocaleKeys.name.tr(),
                    controller: _firstName,
                    isRequired: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: AppTextField(
                      labelText: LocaleKeys.last_name.tr(),
                      controller: _lastName,
                      isRequired: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: AppTextField(
                      labelText: LocaleKeys.middle_name.tr(),
                      controller: _middleName,
                      isRequired: true,
                    ),
                  ),
                  AppTextField(
                    labelText: LocaleKeys.phone_number.tr(),
                    isRequired: true,
                    prefix: const Text(
                      '+996',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    controller: _phoneNumber,
                    keyboardType: TextInputType.number,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: AppTextField(
                      isPassword: true,
                      isRequired: true,
                      labelText: LocaleKeys.password.tr(),
                      controller: _password,
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    padding: const EdgeInsets.only(top: 16, bottom: 32),
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        context.read<AuthBloc>().add(
                              AuthEvent.signUp(
                                RegisterRequest(
                                  firstName: _firstName.text,
                                  lastName: _lastName.text,
                                  phoneNumber: '+996${_phoneNumber.text}',
                                  middleName: _middleName.text,
                                  password: _password.text,
                                ),
                              ),
                            );
                      }
                    },
                    child: Text(LocaleKeys.sign_up.tr()),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
