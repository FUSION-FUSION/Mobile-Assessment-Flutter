import 'package:flutter/material.dart';
import '../../__lib.dart';

class CreateAccountScreen extends StatefulWidget {
  final bool isBusiness;
  const CreateAccountScreen({Key? key, required this.isBusiness})
      : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController firstPasswordController = TextEditingController();
  TextEditingController secondPasswordController = TextEditingController();
  
  @override
 
  Widget build(BuildContext context) {
     final isBusiness = widget.isBusiness;
    return OnboardingScaffold(
      padding: pad(horiz: 15),
      title: 'Welcome',
      subTitle: 'Create an account to get started \nwith Cargo Express',
      child: Expanded(
        child: SingleChildScrollView(
          child: col(
            children: [
              inputFeild(label: isBusiness?'Business Name': 'Full Name', controller: nameController),
              verticalSpace(height: 20),
              inputFeild(label: isBusiness?'Official E-mail':'Your E-mail', controller: emailController),
              verticalSpace(height: 20),
              phoneFormFeild(
                label:isBusiness?'Contact Number': 'Phone Number',
                onPhoneNumberChange: (number) {},
                controller: numberController,
              ),
              verticalSpace(height: 20),
              passwordFeild(controller: firstPasswordController),
              verticalSpace(height: 20),
              passwordFeild(
                  label: 'Confirm Password',
                  controller: secondPasswordController),
              verticalSpace(height: 27),
              spanTextButton(
                  onTap: () => pushScreen(const SignInScreen()),
                  size: 18,
                  alignment: Alignment.center,
                  textBlocks: [
                    const TextSpan(
                      text: 'Already have an account? ',
                    ),
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.brandBlue,
                      ),
                    ),
                  ]),
              verticalSpace(height: 37),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                    bgColor: AppColors.white,
                    onPressed: () => pop(),
                    child: text(
                      'Back',
                      size: 24.5,
                      weight: FontWeight.w600,
                    ),
                  ),
                  horizontalSpace(width: 66.23),
                  button(
                    onPressed: () => pushScreen(const VerificationScreen()),
                    child: text(
                      'Next',
                      size: 24.5,
                      color: AppColors.white,
                      weight: FontWeight.w600,
                    ),
                    elevation: 8,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
