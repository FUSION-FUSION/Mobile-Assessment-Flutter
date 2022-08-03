import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/registration/verification_screen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../util/constants/colors.dart';
import '../../util/constants/styles.dart';
import '../../util/navigators.dart';
import '../../util/validators.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/edit_text.dart';

class SignUpScreen extends StatefulWidget {
  final GestureTapCallback? onClickedSignUp;

  const SignUpScreen({Key? key, this.onClickedSignUp}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _userNamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();

  bool conpass = false;

  bool confirmPassword() {
    setState(() {
      if (passwordcontroller.text == confirmcontroller.text) {
        conpass = true;
      }
    });
    return conpass;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: backgroundDesign,
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only( top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: textColor1),
                ),
                const Text(
                  "Create an account to get started \nwith Cargo Express",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: textColor1),
                ),
                const SizedBox(
                  height: 28,
                ),
                Form(
                  key: formKey,
                  child: AutofillGroup(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          titleTags("username"),
                          EditText(
                            hint: "username",
                            inputType: TextInputType.name,
                            controller: _userNamecontroller,
                            autofillhints: const [AutofillHints.name],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          titleTags("Email"),
                          EditText(
                            hint: "Email",
                            inputType: TextInputType.emailAddress,
                            controller: emailcontroller,
                            validator: (email) =>
                                Validator().emailValidator(email),
                            autofillhints: const [AutofillHints.email],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          titleTags("phone Number"),
                          IntlPhoneField(
                            decoration:
                            kEditTextDecoration.copyWith(hintText: "Phone Number", ),
                            onChanged: (phone) {
                              // setState((){_phonecontroller.text=phone.completeNumber;});
                              _phonecontroller.text = phone.completeNumber;
                              print(
                                  "${phone.completeNumber}\n${_phonecontroller.text}");
                            },
                            onCountryChanged: (country) {
                              print('Country changed to: ' + country.name);
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleTags("password"),
                          EditText(
                              hint: "type your password",
                              inputType: TextInputType.visiblePassword,
                              controller: passwordcontroller,
                              autofillhints: const [AutofillHints.password],
                              validator: (password) =>
                                  Validator().passwordValidator(password)),
                          const SizedBox(height: 20),
                          titleTags("Confirm password"),
                          EditText(
                              hint: "confirm  your password",
                              inputType: TextInputType.visiblePassword,
                              controller: confirmcontroller,
                              autofillhints: const [AutofillHints.password],
                              validator: (password) =>
                                  Validator().passwordValidator(password)),
                          const SizedBox(height: 20),
                          // confirmPassword() ?

                          // : const Text(
                          //     "password is not same",
                          //     style: TextStyle(color: Colors.red, fontSize: 20),
                          //   )
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(text: TextSpan(text: "Already have an account? ",
                                style: const TextStyle(color: textColor1 ,fontSize: 20),
                                children: [
                                  TextSpan(recognizer: TapGestureRecognizer()
                                    ..onTap= widget.onClickedSignUp,
                                      text: "Log In",
                                      style:const TextStyle(
                                          color: primaryColor,
                                        fontWeight: FontWeight.w700

                                      ))
                                ]
                            )),
                          ),
                          const SizedBox(height: 20),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                            ButtonWidget(
                              buttoncolor: Colors.white,
                              textcolor: textColor1,
                              buttonText: "Back",
                              fontsize: 24,
                              fontWeight: FontWeight.w500,
                              onPressed: () {
                                Navigator.pop(context);
                                // AuthService().signup(
                                //     context,
                                //     emailcontroller.text.trim(),
                                //     passwordcontroller.text.trim(),
                                //     _userNamecontroller.text.trim(),
                                //     formKey);
                                // Provider.of<AuthProvider>(context, listen: false)
                                //     .createUserWithPhone(_phonecontroller.text);
                                // navigatorKey.currentState!
                                //     .pushReplacement(MaterialPageRoute(
                                //     builder: (context) => OtpScreen(
                                //       phoneNumber:
                                //       _phonecontroller.text.trim(),
                                //     )));
                              },
                              buttonHieght: size.height*.08,
                              buttonWidth: size.width*.3,
                            ),
                            ButtonWidget(
                              buttoncolor: primaryColor,
                              textcolor: Colors.white,
                              buttonText: "Next",
                              fontsize: 24,
                              fontWeight: FontWeight.w500,
                              onPressed: () {
                                changeScreen(context, const OtpVerificationScreen());
                              },
                              buttonHieght: size.height*.08,
                              buttonWidth: size.width*.3,
                            ),
                          ]),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ));

  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    _phonecontroller.dispose();
    _userNamecontroller.dispose();
    confirmcontroller.dispose();
    super.dispose();
  }
}