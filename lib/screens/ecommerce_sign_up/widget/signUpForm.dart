import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../../widget/inputField.dart';

class SignUpForm extends StatefulWidget {
  GlobalKey formKey;
  SignUpForm({Key? key, required this.formKey}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? businessNameValidator(String? text) {
    if (text == null) {
      return 'Business Name Field cannot be empty';
    }
    String fullNamePattern =
        r"^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$";
    if (RegExp(fullNamePattern).firstMatch(text) == null) {
      return 'Invalid Full Name Pattern';
    }
    return null;
  }

  String? emailValidator(String? text) {
    if (text == null) {
      return 'Email Field cannot be empty';
    }
    String emailPattern =
        r"^(([^<>()[\]\\.,;:\s@']+(\.[^<>()[\]\\.,;:\s@']+)*)|('.+'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$";
    if (RegExp(emailPattern).firstMatch(text) == null) {
      return 'Invalid Email Pattern';
    }
    return null;
  }

  String? phoneNoValidator(String? text) {
    if (text == null) {
      return 'Phone Number Field cannot be empty';
    }
    if (text.length != 10) {
      return 'A Phone Number can only be 10 digits';
    }
    return null;
  }

  String confirmPassword = '';
  String? passwordValidator(String? text) {
    if (text == null) {
      return 'Password Field cannot be empty';
    }
    if (text.length < 6) {
      return 'You password should exceed 6 Characters';
    }
    confirmPassword = text;
    return null;
  }

  String? confirmPasswordValidator(String? text) {
    if (text == null) {
      return 'Password Field cannot be empty';
    }
    if (text != confirmPassword) {
      return 'Password is not equal to confirm password';
    }
    return null;
  }

  String phoneCode = '+234';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputField(
              labelText: 'Business Name',
              width: double.infinity,
              height: 100,
              radius: 17,
              validator: businessNameValidator,
            ),
            InputField(
              labelText: 'Official E-mail',
              width: double.infinity,
              height: 100,
              radius: 17,
              validator: emailValidator,
            ),
            InputField(
              validator: phoneNoValidator,
              keyboardType: TextInputType.phone,
              labelText: 'Contact Number',
              width: double.infinity,
              height: 100,
              radius: 17,
              prefix: InkWell(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode:
                        true, // optional. Shows phone code before the country name.
                    onSelect: (Country country) {
                      setState(() {
                        phoneCode = '+${country.phoneCode}';
                      });
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(children: [
                    Text(phoneCode),
                    const Icon(Icons.arrow_drop_down)
                  ]),
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                      color: normalWhite,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: 2,
                          color: const Color(0xff1f1f1f).withOpacity(0.1))),
                ),
              ),
            ),
            InputField(
              labelText: 'Password',
              width: double.infinity,
              height: 100,
              radius: 17,
              isObscure: true,
              validator: passwordValidator,
            ),
            InputField(
              labelText: 'Confirm Password',
              width: double.infinity,
              height: 100,
              radius: 17,
              isObscure: true,
              validator: confirmPasswordValidator,
            )
          ],
        ));
  }
}
