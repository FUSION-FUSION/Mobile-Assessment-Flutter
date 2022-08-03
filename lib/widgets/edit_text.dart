import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../util/constants/styles.dart';


class EditText extends StatelessWidget {
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofillhints;

  const EditText(
      {Key? key,
        required this.hint,
        required this.inputType,
        required this.controller,
        this.validator, this.autofillhints})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:
        kEditTextDecoration.copyWith(hintText: hint ),
        autofillHints:  autofillhints,
        textAlign: TextAlign.center,
        keyboardType: inputType,
        controller: controller,
        //use to validate email
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator);
  }
}
