import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_assessment_flutter/pages/auth/login.dart';
import 'package:mobile_assessment_flutter/pages/auth/otp_verification.dart';
import 'package:page_transition/page_transition.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';

class ECommerceSignup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ECommerceSignupState();
  }
}

class _ECommerceSignupState extends State<ECommerceSignup> {
  bool obsecureText = false;
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void _submitForm(context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeft,
          child: OTPVerification(
            number: phoneController.text,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 25, right: 25, top: 75, bottom: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg-app-cloud.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [fadeBackground, background],
            ),
          ),
          child: Form(
            key: _formKey,
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50, top: 5),
                    child: Text(
                      "Create an account to get started with Cargo Express",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Business Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value must not be empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Official E-mail",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null ||
                          !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                              .hasMatch(value)) {
                        return 'Enter a valid email address';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Contact Number",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                      setSelectorButtonAsPrefixIcon: true,
                      showFlags: false,
                    ),
                    inputDecoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone number must not be empty';
                      } else {
                        return null;
                      }
                    },
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: phoneController,
                    formatInput: false,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    onSaved: (PhoneNumber number) {
                      phoneController.text = number.toString();
                      print('On Saved: $number');
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: passwordController,
                    obscureText: obsecureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      suffixIcon: IconButton(
                        icon: obsecureText
                            ? Icon(CupertinoIcons.eye_slash, size: 25)
                            : Icon(CupertinoIcons.eye, size: 25),
                        onPressed: () {
                          setState(() {
                            obsecureText = !obsecureText;
                          });
                        },
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'password must not be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    obscureText: obsecureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      suffixIcon: IconButton(
                        icon: obsecureText
                            ? Icon(CupertinoIcons.eye_slash, size: 25)
                            : Icon(CupertinoIcons.eye, size: 25),
                        onPressed: () {
                          setState(() {
                            obsecureText = !obsecureText;
                          });
                        },
                      ),
                    ),
                    validator: (String? value) {
                      if (value != passwordController.text) {
                        return 'password must be the same';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? - ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: babyBlue,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(boxShadow: []),
                        height: 64,
                        width: 135,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: offWhite,
                            elevation: 0.5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(70, 165, 186, 0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ]),
                        height: 64,
                        width: 135,
                        child: ElevatedButton(
                          onPressed: () {
                            _submitForm(context);
                          },
                          child: Text("Next"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            primary: babyBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
