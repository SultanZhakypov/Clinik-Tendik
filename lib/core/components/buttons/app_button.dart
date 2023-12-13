import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum BUTTONSTYLE {
  ALERT,
  PRIMARY,
  TERTIARY,
}

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.padding,
    this.buttonstyle = BUTTONSTYLE.PRIMARY,
  });

  final BUTTONSTYLE buttonstyle;

  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  ButtonStyle? _buttonStyle;

  @override
  void initState() {
    super.initState();

    switch (widget.buttonstyle) {
      case BUTTONSTYLE.ALERT:
        _buttonStyle = const ButtonStyle(
          foregroundColor: MaterialStatePropertyAll<Color>(AppColors.white),
          backgroundColor: MaterialStatePropertyAll<Color>(AppColors.red),
          shadowColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          surfaceTintColor: MaterialStatePropertyAll<Color>(AppColors.red),
        );
      case BUTTONSTYLE.PRIMARY:
        _buttonStyle = const ButtonStyle();
      case BUTTONSTYLE.TERTIARY:
        _buttonStyle = const ButtonStyle(
          elevation: MaterialStatePropertyAll<double>(0),
          backgroundColor:
              MaterialStatePropertyAll<Color>(AppColors.transparent),
          shadowColor: MaterialStatePropertyAll<Color>(AppColors.transparent),
          surfaceTintColor:
              MaterialStatePropertyAll<Color>(AppColors.transparent),
        );

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: 56,
        child: ElevatedButton(
          style: _buttonStyle,
          onPressed: widget.onPressed,
          child: Center(child: widget.child),
        ),
      ),
    );
  }
}
