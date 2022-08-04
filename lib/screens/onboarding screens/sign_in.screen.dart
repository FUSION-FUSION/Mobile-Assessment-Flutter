import 'package:flutter/material.dart';

import '../../__lib.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      padding: pad(horiz: 15),
      title: 'Sign In',
      subTitle: 'Sign in to continue to Cargo Express',
      child: Expanded(
        child: SingleChildScrollView(
          child: col(
            children: [
              inputFeild(label: 'Phone Number', controller: numberController),
              verticalSpace(height: 20),
              passwordFeild(controller: passwordController),
              verticalSpace(height: 41),
              InkWell(
                  onTap: () => pushScreen(const ChooseAccountTypeScreen()),
                  child: Center(
                    child: text(
                      'Create Account',
                      weight: FontWeight.w600,
                      size: 18,
                      color: AppColors.brandBlue,
                    ),
                  )),
              verticalSpace(height: 75.33),
              Center(
                child: button(
                  onPressed: () => pushScreen(const HomeScreen()),
                  child: text(
                    'Sign In',
                    size: 27.13,
                    color: AppColors.white,
                    weight: FontWeight.w500,
                  ),
                  padding: pad(horiz: 45.22, vert: 15.07),
                  elevation: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
