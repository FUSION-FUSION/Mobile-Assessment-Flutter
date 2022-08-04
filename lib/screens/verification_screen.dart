import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
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
  int? countTime;

  @override
  void initState() {
    super.initState();
    startCount();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Hero(
              child: Image.asset('assets/bg-app-cloud.png'),
              tag: 'bg',
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 70.0, left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Verification!',
                      style: ThemeStyles.primaryText,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'We sent you an ',
                          style: ThemeStyles.secondaryText,
                        ),
                      ),
                      Text(
                        'SMS',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        ' code on',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'number',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' +2348108960610',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtpField(),
                      OtpField(),
                      OtpField(),
                      OtpField(),
                      OtpField(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CountdownTimer(
                          widgetBuilder: (context, timeLeft) => Text(
                            timeLeft?.sec != null
                                ? '${timeLeft?.min ?? '00'}:${timeLeft?.sec ?? '00'}'
                                : 'Code Expired',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          endTime: countTime,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ShipifyTextButton(
                      onPressed: startCount,
                      text: 'Resend Code',
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                          color: Colors.white,
                          onPressed: _onPressed,
                          icon: Icon(Icons.arrow_forward)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessScreen()));
  }

  void startCount() {
    countTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
    if (mounted) {
      setState(() {});
    }
  }
}
