import 'package:flutter/material.dart';

import '../../../widget/inputField.dart';

class SignUpForm extends StatefulWidget {
  GlobalKey formKey;
  SignUpForm({Key? key, required this.formKey}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? emailPhoneValidator(String? text) {
    if (text == null) {
      return 'Field cannot be empty';
    }
    String emailPattern =
        r"^(([^<>()[\]\\.,;:\s@']+(\.[^<>()[\]\\.,;:\s@']+)*)|('.+'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$";
    if ((RegExp(emailPattern).firstMatch(text) == null) && (text.length < 10)) {
      return 'Invalid Entry';
    }
    return null;
  }

  String? passwordValidator(String? text) {
    if (text == null) {
      return 'Password Field cannot be empty';
    }
    if (text.length < 6) {
      return 'You password should exceed 6 Characters';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputField(
              labelText: 'Phone Number / E-mail ',
              width: double.infinity,
              height: 100,
              radius: 17,
              validator: emailPhoneValidator,
            ),
            InputField(
              labelText: 'Password',
              width: double.infinity,
              height: 100,
              radius: 17,
              isObscure: true,
              validator: passwordValidator,
            ),
          ],
        ));
  }
}
