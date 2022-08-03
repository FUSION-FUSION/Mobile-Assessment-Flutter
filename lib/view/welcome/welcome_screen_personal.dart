import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/user_kind/user_kind_screen.dart';
import 'package:mobile_assessment_flutter/view/verification/verification_screen.dart';
import 'package:mobile_assessment_flutter/view/widgets/custom_button.dart';
import 'package:mobile_assessment_flutter/view/widgets/form_field.dart';
import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';
import '../sign_in/sign_in_screen.dart';

class WelcomeScreenPersonal extends StatefulWidget {
  static String routeName = '/welcome_screen';
  const WelcomeScreenPersonal({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreenPersonal> createState() => _WelcomeScreenPersonalState();
}

class _WelcomeScreenPersonalState extends State<WelcomeScreenPersonal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBackground,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Container(
                    height: height * 0.3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(backgroundAppCloud),
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.06, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Create an account to get started \nwith Cargo Express',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const UserFormField(
                      title: 'Full Name',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const UserFormField(
                      title: 'Your E-mail',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const UserFormField(
                      title: 'Phone Number',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const UserFormField(
                      title: 'Password',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const UserFormField(
                      title: 'Confirm Password',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                            fontSize: 16,
                              color: kPrimary, fontWeight: FontWeight.w600),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          },
                        )
                      ]),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        CustomButton(
                          text: 'Back',
                          height: height * 0.065,
                          width: width * 0.3,
                          fontSize: 22,
                          isLightbackground: true,
                          press: (){
                            Navigator.pushNamed(context, UserKindScreen.routeName);
                          },
                        ),
                        const Spacer(),
                        CustomButton(
                          text: 'Next',
                          height: height * 0.065,
                          width: width * 0.3,
                          fontSize: 22,
                          press: (){
                            Navigator.pushNamed(context, VerificationScreen.routeName);
                          },
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
