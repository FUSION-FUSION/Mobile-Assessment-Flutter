import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/border_button.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudBackground(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: context.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                const YMargin(ktinyspace),
                const Text(
                  'Sign in to continue to Cargo Express',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
                const YMargin(kLargespace + ktinyspace),
                const CustomTextfield(label: 'Phone Number / E-mail '),
                const YMargin(kspace),
                const CustomTextfield(label: 'Password'),
                const YMargin(kxtralargespace),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Create an Account',
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const YMargin(kxtralargespace * 2),
                Center(
                  child: SizedBox(
                      width: 182,
                      child: BorderButton(label: 'Sign In', onTap: () {})),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
