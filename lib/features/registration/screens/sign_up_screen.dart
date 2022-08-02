import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/border_button.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/custom_text_field.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/phone_code_dropdown.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                const CustomTextfield(label: 'Full Name'),
                const YMargin(kspace),
                const CustomTextfield(label: 'Your E-mail'),
                const YMargin(kspace),
                const PhonecodeDropdown(
                  label: 'Phone Number',
                  items: ['+234', '+233', '+122', '+123', '+133'],
                ),
                const YMargin(kspace),
                const CustomTextfield(label: 'Password'),
                const YMargin(kspace),
                const CustomTextfield(label: 'Confirm Password'),
                const YMargin(kmediumspace),
                GestureDetector(
                  onTap: () {},
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
                        onTap: () {},
                        backgroundColor: AppColor.bottomlinear,
                        foregroundColor: AppColor.fieldwhite,
                        labelColor: AppColor.basetext,
                      ),
                    ),
                    const XMargin(kLargespace),
                    Expanded(
                      child: BorderButton(label: 'Next', onTap: () {}),
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
