import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final TextAlign? textAlign;
  final String? labelText;
  final String? hintText;
  final TextStyle? style;
  final String Function(String?)? validator;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final InputBorder? inputBorder;
  final InputBorder? enabledBorder;
  final int? maxLines;
  final bool? hasLabel;
  final bool hideBorder;
  final bool readOnly;
  final Function(String)? onChanged;
  final Function()? onTap;
  final List<TextInputFormatter>? formatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? errorText;
  final bool? filled;
  final bool inputError;
  final FocusNode? focusNode;

  const AppTextField({
    Key? key,
    this.hintText,
    this.keyboardType,
    this.controller,
    this.filled,
    this.textAlign,
    this.initialValue,
    this.maxLines = 1,
    this.style,
    this.validator,
    this.inputError = false,
    this.hideBorder = false,
    this.isPassword = false,
    this.inputBorder,
    this.enabledBorder,
    this.onChanged,
    this.formatters,
    this.readOnly = false,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.errorText,
    this.focusNode,

    this.hasLabel
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.hasLabel == null ? Text(
            widget.labelText ?? '',
            style: getRegularStyle(
                color: ColorManager.black900, fontSize: FontSize.s16),
          ) : const SizedBox(),
          widget.hasLabel == null ?   const SizedBox(height: 6) : const SizedBox(),
          TextFormField(
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black54, fontSize: 16),
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
                filled: widget.filled ??
                    Theme.of(context).inputDecorationTheme.filled,
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                enabledBorder: widget.enabledBorder ??
                    Theme.of(context).inputDecorationTheme.enabledBorder,
                border: widget.inputBorder ??
                    Theme.of(context).inputDecorationTheme.border,
                contentPadding:
                    Theme.of(context).inputDecorationTheme.contentPadding),
            textAlign: widget.textAlign ?? TextAlign.start,
            obscureText: widget.isPassword,
            focusNode: widget.focusNode,
            validator: widget.validator,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            readOnly: widget.readOnly,
            inputFormatters: widget.formatters,
            initialValue: widget.initialValue,
            maxLines: widget.maxLines,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            cursorHeight: 24, cursorColor: ColorManager.teal,
          ),
        ],
      );
}
