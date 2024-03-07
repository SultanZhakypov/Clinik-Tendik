import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/components/buttons/app_button.dart';
import 'package:clinic_tendik/core/components/dialogs/custom_show_dialog.dart';
import 'package:clinic_tendik/core/components/loading/loading_overlay.dart';
import 'package:clinic_tendik/core/components/text_fields/custom_textfield.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/dio/app_exception.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/auth_response.dart';
import 'package:clinic_tendik/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:clinic_tendik/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
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
          successSignIn: (data) {
            LoadingOverlay.removeLoadingOverlay();
            context.router.pushAndPopUntil(
              const TalonesAndRegisterPageRoute(),
              predicate: (_) => false,
            );
          },
        );
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 56),
                      child: IconButton(
                        onPressed: () {
                          CustomShowDialog.langShow(context)
                              .then((value) => setState(() {}));
                        },
                        icon: const Icon(Icons.language_outlined),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      LocaleKeys.sign_in.tr(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: AppTextField(
                      labelText: LocaleKeys.phone_number.tr(),
                      isRequired: true,
                      prefix: const Text(
                        '+996',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  AppTextField(
                    isPassword: true,
                    isRequired: true,
                    controller: _passwordController,
                    labelText: LocaleKeys.password.tr(),
                  ),
                  const Spacer(),
                  AppButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        context.read<AuthBloc>().add(
                              AuthEvent.signIn(
                                AuthRequest(
                                  phoneNumber:
                                      '+996${_phoneNumberController.text}',
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                      }
                    },
                    child: Text(LocaleKeys.sign_in.tr()),
                  ),
                  AppButton(
                    buttonstyle: BUTTONSTYLE.TERTIARY,
                    padding: const EdgeInsets.only(top: 16, bottom: 32),
                    onPressed: () {
                      context.router.push(const RegisterPageRoute());
                    },
                    child: Text(LocaleKeys.sign_up.tr()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




