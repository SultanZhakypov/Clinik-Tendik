import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _kBorderRadius = BorderRadius.all(Radius.circular(12));

class AppTextField extends StatefulWidget {
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
    this.isPassword = false,
    this.isRequired = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixText,
    this.onChanged,
    this.inputFortmatters,
    this.maxLength,
    this.prefix,
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
  final Widget? prefix;
  final int? maxLength;
  final String? Function(String?)? validator;
  final String? labelText;
  final bool isPassword;
  final bool isRequired;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final _passwordVisible = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    if (widget.isPassword) {
      return ValueListenableBuilder(
        valueListenable: _passwordVisible,
        builder: (_, __, child) {
          return TextFormField(
            onTapOutside: (event) {
              WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
            },
            maxLength: widget.maxLength,
            inputFormatters: widget.inputFortmatters,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            validator: widget.validator ??
                (v) {
                  if (widget.isRequired) {
                    if (v?.isEmpty == true) {
                      return 'Обязательное поле';
                    }
                  }

                  return null;
                },
            onChanged: widget.onChanged,
            focusNode: widget.focusNode,
            obscureText: _passwordVisible.value,
            autofocus: widget.autoFocus,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: () {
                  _passwordVisible.value = !_passwordVisible.value;
                },
                child: Icon(
                  _passwordVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              counterText: '',
              labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              labelText: widget.labelText,
              prefix: widget.prefix,
              prefixText: widget.prefixText,
              contentPadding: const EdgeInsets.all(16),
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              filled: true,
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: _kBorderRadius,
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: _kBorderRadius,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: _kBorderRadius,
              ),
            ),
          );
        },
      );
    } else {
      return TextFormField(
        onTapOutside: (event) {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFortmatters,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        validator: widget.validator ??
            (v) {
              if (widget.isRequired) {
                if (v?.isEmpty == true) {
                  return 'Обязательное поле';
                }
              }
              return null;
            },
        onChanged: widget.onChanged,
        focusNode: widget.focusNode,
        autofocus: widget.autoFocus,
        decoration: InputDecoration(
          counterText: '',
          labelText: widget.labelText,
          prefixText: widget.prefixText,
          contentPadding: const EdgeInsets.all(16),
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          prefix: widget.prefix,
          filled: true,
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: _kBorderRadius,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: _kBorderRadius,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: _kBorderRadius,
          ),
        ),
      );
    }
  }
}
