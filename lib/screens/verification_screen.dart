import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/screens/success_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';
import 'package:mobile_assessment_flutter/widgets/otp_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg-app-cloud.png'), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verification!',
                style: ThemeStyles.primaryText,
              ),
              Text(
                'We sent you an SMS code on\nnumber +2348108960610',
                style: ThemeStyles.secondaryText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpField(),
                  OtpField(),
                  OtpField(),
                  OtpField(),
                ],
              ),
              IconButton(
                  onPressed: _onPressed,
                  icon: Icon(Icons.arrow_forward)),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen()));
  }
}
