import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';

class AppTextField extends StatefulWidget {
  final GlobalKey<FormState>? formKey;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String labelText;
  final String? title;
  final Widget? prefixIcon, suffixIcon;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? borderWidth;
  final double? fontSize;
  final bool? enabled;
  final String? initialValue;
  final bool isPasswordField;
  final FormFieldValidator<String>? validator;
  final String? errorText;
  final Function(String)? onChanged;
  final int maxLines;
  final Color? borderColor, focusedBorderColor, background;

  const AppTextField({
    Key? key,
    this.formKey,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
    this.borderWidth,
    this.fontSize = 16,
    this.enabled,
    this.initialValue,
    this.isPasswordField = false,
    this.validator,
    this.errorText,
    this.onChanged,
    this.maxLines = 1,
    this.borderColor,
    this.background,
    this.title, this.focusedBorderColor,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showingPassword = false;

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        widget.borderRadius ?? const BorderRadius.all(Radius.circular(17));
    final borderWidth = widget.borderWidth ?? 1;
    final theme = ThemeProvider.current(context);
    final borderColor = widget.borderColor ?? Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: theme.text(
              widget.title!,
              color: theme.primaryTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        TextFormField(
          enabled: widget.enabled,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          initialValue: widget.initialValue,
          validator: widget.validator,
          obscuringCharacter: '*',
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
          obscureText: widget.isPasswordField ? !showingPassword : false,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontSize: widget.fontSize,
          ),
          decoration: InputDecoration(
            floatingLabelBehavior: widget.floatingLabelBehavior,
            contentPadding: widget.padding,
            prefixIcon: widget.prefixIcon,
            errorText: widget.errorText,
            filled: true,
            fillColor: widget.background ?? theme.textfieldBackgroundColor,
            suffixIcon: widget.suffixIcon,
            labelText: widget.labelText,
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: widget.focusedBorderColor ?? theme.primaryColor.withOpacity(0.6),
                width: borderWidth,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
