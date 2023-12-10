import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.labelText,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.onSubmitted,
    this.enabled,
    this.focusNode,
    this.controller,
    this.autoFocus = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixText,
    this.onChanged,
    this.inputFortmatters,
    this.maxLength,
  }) : super(key: key);
  final bool? enabled;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String?)? onSubmitted;
  final Function(String?)? onChanged;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool autoFocus;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFortmatters;
  final String? prefixText;
  final int? maxLength;
  final String? Function(String?)? validator;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      maxLength: maxLength,
      inputFormatters: inputFortmatters,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      focusNode: focusNode,
      autofocus: autoFocus,
      decoration: InputDecoration(
        counterText: '',
        labelText: labelText,
        prefixText: prefixText,
        contentPadding: const EdgeInsets.all(16),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
