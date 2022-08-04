import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'visual_components/general_form_item.dart';

// screens
import 'choose_purpose_screen.dart';
import 'register_2_verification.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Sign In" text
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),

            // "Sign in to continue..." text
            const Padding(
              padding: EdgeInsets.only(right: 100, bottom: 30),
              child: Text(
                'Sign in to continue to Cargo Express',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                ),
              ),
            ),

            // Phone Number / Email section
            GeneralFormItem(
              headerText: 'Phone Number / E-mail',
              onEditingComplete: () {},
            ),

            // password
            GeneralFormItem(
              headerText: 'Phone Number / E-mail',
              onEditingComplete: () {},
              obscureText: true,
            ),

            // "Create an account" button
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: kCyanishColor,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const ChoosePurposeScreen()),
                    (route) => false,
                  );
                },
              ),
            ),
            const SizedBox(height: 50),

            // "Sign In" button
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                minWidth: 160,
                height: 65,
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // go to home screen
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const Registration2()),
                  );
                },
                color: kCyanishColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
