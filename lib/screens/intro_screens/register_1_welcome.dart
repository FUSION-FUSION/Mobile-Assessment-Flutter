import 'package:flutter/material.dart';
import '../../constants.dart';

// components
import 'visual_components/general_form_item.dart';
import 'visual_components/phone_number_form_item.dart';

// screens
import 'register_2_verification.dart';
import 'sign_in_screen.dart';

class Registration1 extends StatelessWidget {
  const Registration1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kIntroScreensBGColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: kIntroScreensBGColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg-app-cloud.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // "Welcome" Text
                const SizedBox(height: 70),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),

                // "Create an account to get..."
                const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    'Create an account to get started with Cargo Express',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // "Full name" field
                GeneralFormItem(
                  headerText: 'Full Name',
                  onEditingComplete: () {},
                ),

                // "Your E-mail" field
                GeneralFormItem(
                  headerText: 'Your E-mail',
                  onEditingComplete: () {},
                ),

                // Phone Number
                PhoneNumberFormItem(
                  headerText: 'Phone Number',
                  onEditingComplete: () {},
                ),

                // Password
                GeneralFormItem(
                  headerText: 'Password',
                  onEditingComplete: () {},
                ),

                // Confirm Password
                GeneralFormItem(
                  headerText: 'Confirm Password',
                  onEditingComplete: () {},
                ),

                // "Already have an account? ..."
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()),
                        );
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold,
                          color: kCyanishColor,
                        ),
                      ),
                    ),
                  ],
                ),

                // Back button and next button
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Back Button
                      CustomButton2(
                        color: Colors.white70,
                        text: 'Back',
                        textColor: Colors.black87,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        borderColor: Colors.white,
                      ),

                      // Next Button
                      CustomButton2(
                        color: kCyanishColor,
                        text: 'Next',
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registration2()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final Function onPressed;
  final Color borderColor;

  const CustomButton2({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onPressed,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: MaterialButton(
        elevation: 0,
        onPressed: () {
          onPressed();
        },
        color: color,
        height: 50,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
