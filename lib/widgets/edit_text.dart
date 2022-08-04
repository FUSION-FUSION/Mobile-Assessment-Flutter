import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../util/constants/styles.dart';

class EditText extends StatelessWidget {
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofillhints;
  final VoidCallback? onEditComplete;
  final bool? showText;

  const EditText(
      {Key? key,
      required this.hint,
      required this.inputType,
      required this.controller,
      this.validator,
      this.autofillhints,
      this.onEditComplete,
      this.showText=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: kEditTextDecoration.copyWith(hintText: hint),
      autofillHints: autofillhints,
      textAlign: TextAlign.center,
      keyboardType: inputType,
      controller: controller,
      obscureText: showText!,
      //use to validate email
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      onEditingComplete: onEditComplete,
    );
  }
}
