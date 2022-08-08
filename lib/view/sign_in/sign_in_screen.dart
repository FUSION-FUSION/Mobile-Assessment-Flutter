import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/home_screen.dart';
import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';
import '../welcome/welcome_screen_personal.dart';
import '../widgets/custom_button.dart';
import '../widgets/form_field.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = '/sign_screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                          'Sign In',
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
                          'Sign in to continue to Cargo Express',
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
                      title: 'Phone Number/Email',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const UserFormField(
                      title: 'Password',
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Create an Account ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: kPrimary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, WelcomeScreenPersonal.routeName);
                          },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    CustomButton(
                      text: 'Sign In',
                      height: height * 0.075,
                      width: width * 0.45,
                      fontSize: 24,
                      isLightBackground: false,
                      press: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),
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
