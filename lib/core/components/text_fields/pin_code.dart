import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

/// Do not modify [PinCodeArea]
class PinCodeArea extends StatelessWidget {
  const PinCodeArea({
    super.key,
    required this.formKey,
    required this.controller,
    this.isVirtual = false,
    this.useLengthValidator = true,
    this.length,
    this.fieldHeight,
    this.fieldWidth,
    this.validator,
    this.accFocusNode,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController controller;
  final bool useLengthValidator;
  final FocusNode? accFocusNode;

  /// obscureText [isVirtual]
  final bool isVirtual;

  /// default 4
  final int? length;

  /// default 64
  final double? fieldHeight;

  /// default 60
  final double? fieldWidth;

  /// if Null, checking for 4 length
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 350),
        child: PinCodeTextField(
          focusNode: accFocusNode,
          autoDisposeControllers: false,
          obscureText: isVirtual,
          enablePinAutofill: false,
          appContext: context,
          length: length ?? 4,
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          autovalidateMode: AutovalidateMode.disabled,
          validator: validator ??
              (v) {
                if (v?.isEmpty == true) {
                  return 'Объязательное поле';
                }
                return null;
              },
          controller: controller,
          animationCurve: Curves.easeInToLinear,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          cursorColor: AppColors.purple,
          pinTheme: PinTheme(
            activeColor: Colors.grey.withOpacity(0.3),
            selectedColor: AppColors.purple,
            inactiveColor: Colors.grey.withOpacity(0.5),
            inactiveFillColor: Colors.grey.withOpacity(0.5),
            selectedFillColor: Colors.grey.withOpacity(0.3),
            disabledColor: Colors.grey.withOpacity(0.5),
            activeFillColor: Colors.grey.withOpacity(0.5),
            fieldHeight: fieldHeight ?? 64,
            fieldWidth: fieldWidth ?? 60,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
