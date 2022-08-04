import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/screens/success_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';
import 'package:mobile_assessment_flutter/widgets/otp_field.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_text_button.dart';

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
                'We sent you an ',
                style: ThemeStyles.secondaryText,
              ),
              Text(
                'SMS',
                style: TextStyle(
                  color: Colors.blue,
                ),
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
              ShipifyTextButton(
                onPressed: null,
                text: 'Resend Code',
                color: Colors.black,
                fontSize: 20,
              ),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                    onPressed: _onPressed,
                    icon: Icon(Icons.arrow_forward)),
              ),
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
