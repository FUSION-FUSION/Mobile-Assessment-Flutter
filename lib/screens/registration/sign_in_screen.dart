import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/home/home_screen.dart';

import '../../firebase_service/auth_services.dart';
import '../../util/constants/colors.dart';
import '../../util/constants/styles.dart';
import '../../util/navigators.dart';
import '../../util/validators.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/edit_text.dart';

class SignInScreen extends StatefulWidget {
  final GestureTapCallback? onClickedSignUp;

  const SignInScreen({Key? key, this.onClickedSignUp}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();





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
            padding: const EdgeInsets.only(right: 20, left: 20, top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: textColor1),
                ),
                const Text(
                  "Sign in to continue to Cargo Express",
                  style: TextStyle(
                      fontSize: 16,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          titleTags("phone number / E-mail"),
                          EditText(
                            hint: "phone number / E-mail",
                            inputType: TextInputType.emailAddress,
                            controller: emailcontroller,
                            validator: (email) =>
                                Validator().emailValidator(email),
                            autofillhints: const [AutofillHints.email],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          titleTags("password"),

                          EditText(
                              hint: "type your password",
                              inputType: TextInputType.visiblePassword,
                              controller: passwordcontroller,
                              autofillhints: const [AutofillHints.password],
                              validator: (password) =>
                                  Validator().passwordValidator(password)),
                          const SizedBox(height: 40),
                          // confirmPassword() ?

                          // : const Text(
                          //     "password is not same",
                          //     style: TextStyle(color: Colors.red, fontSize: 20),
                          //   )
                          Align(
                            alignment: Alignment.center,
                            child: RichText(text: TextSpan(recognizer: TapGestureRecognizer()
                              ..onTap= widget.onClickedSignUp,
                                text: "Create an Account",
                                style:const TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                )),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [ButtonWidget(
                              buttoncolor: primaryColor,
                              textcolor: Colors.white,
                              buttonText: "Sign In",
                              fontsize: 24,
                              fontWeight: FontWeight.w500,
                              onPressed: () {
                                AuthService().signin(
                                    emailcontroller.text.trim(),
                                    passwordcontroller.text.trim(),
                                    context,
                                    formKey);
                              },
                              buttonHieght: size.height*.08,
                              buttonWidth: size.width*.4,
                            ),]
                          ),
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
    super.dispose();
  }
}