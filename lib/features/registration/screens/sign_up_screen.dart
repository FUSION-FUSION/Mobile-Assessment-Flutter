import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/routes/app_route.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/enums.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/border_button.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/custom_text_field.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/phone_code_dropdown.dart';

class SignUpScreen extends StatelessWidget {
  final UserType userType;
  const SignUpScreen({Key? key, required this.userType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudBackground(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: context.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                const YMargin(ktinyspace),
                const Text(
                  'Create an account to get started with Cargo Express',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
                const YMargin(kLargespace + ktinyspace),
                CustomTextfield(
                    label: userType == UserType.personal
                        ? 'Full Name'
                        : 'Business Name'),
                const YMargin(kspace),
                CustomTextfield(
                    label: userType == UserType.personal
                        ? 'Your E-mail'
                        : 'Official E-mail'),
                const YMargin(kspace),
                PhonecodeDropdown(
                  label: userType == UserType.personal
                      ? 'Phone Number'
                      : 'Contact Number',
                  items: const ['+234', '+233', '+122', '+123', '+133', '+144'],
                ),
                const YMargin(kspace),
                const CustomTextfield(label: 'Password'),
                const YMargin(kspace),
                const CustomTextfield(label: 'Confirm Password'),
                const YMargin(kmediumspace),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.loginroute);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
                const YMargin(kspace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: BorderButton(
                        label: 'Back',
                        onTap: () {
                          Navigator.pop(context);
                        },
                        backgroundColor: AppColor.bottomlinear,
                        foregroundColor: AppColor.fieldwhite,
                        labelColor: AppColor.basetext,
                      ),
                    ),
                    const XMargin(kLargespace),
                    Expanded(
                      child: BorderButton(
                        label: 'Next',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoute.verificationroute);
                        },
                      ),
                    ),
                  ],
                ),
                const YMargin(kmediumspace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
