import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudBackground(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Verification!',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          const YMargin(ktinyspace),
          RichText(
            text: const TextSpan(
                text: 'We sent you an ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColor.basetext),
                children: [
                  TextSpan(
                    text: 'SMS ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary),
                  ),
                  TextSpan(
                    text: 'code on number ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: '+2348108960610',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary),
                  ),
                ]),
          ),
          const YMargin(kLargespace + ktinyspace),
          const YMargin(kspace),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'Resend Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const YMargin(kLargespace),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                height: 59,
                width: 59,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.primary,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: AppColor.white,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
