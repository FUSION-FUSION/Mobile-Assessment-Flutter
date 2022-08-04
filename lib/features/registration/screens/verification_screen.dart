import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/routes/app_route.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late Timer _timer;
  Duration _duration = const Duration(seconds: 60);
  bool _timercompleted = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    setState(() {
      _timercompleted = false;
    });
    const onesec = Duration(seconds: 1);
    _timer = Timer.periodic(onesec, (timer) {
      const reducesec = 1;
      setState(() {
        final seconds = _duration.inSeconds - reducesec;
        if (seconds < 1) {
          _timer.cancel();
          _timercompleted = true;
          _duration = const Duration(seconds: 60);
        } else {
          _duration = Duration(seconds: seconds);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

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
          PinCodeTextField(
            appContext: (context),
            length: 5,
            onChanged: (value) {},
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            cursorColor: AppColor.primary,
            pinTheme: PinTheme(
              fieldHeight: 66,
              fieldWidth: 57,
              inactiveFillColor: AppColor.fieldwhite,
              inactiveColor: AppColor.fieldwhite,
              activeFillColor: AppColor.fieldwhite,
              activeColor: AppColor.fieldwhite,
              disabledColor: AppColor.fieldwhite,
              selectedColor: AppColor.fieldwhite,
              selectedFillColor: AppColor.fieldwhite,
            ),
          ),
          const YMargin(kspace),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
                _timercompleted ? 'Code Expired' : '00:${_duration.inSeconds}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.warning)),
          ),
          const YMargin(kspace),
          Center(
            child: GestureDetector(
              onTap: () {
                if (_timercompleted) {
                  startTimer();
                }
              },
              child: const Text(
                'Resend Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const YMargin(kLargespace),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, AppRoute.regsuccessroute);
            },
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
