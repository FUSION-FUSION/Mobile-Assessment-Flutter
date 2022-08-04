import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/pages/auth/success.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class OTPVerification extends StatefulWidget {
  final String number;
  const OTPVerification({Key? key, required this.number}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _OTPVerificationState();
  }
}

class _OTPVerificationState extends State<OTPVerification> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final OtpFieldController otpController = OtpFieldController();
  Timer? countdownTimer;
  Duration duration = Duration(seconds: 60);

  void startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        final seconds = duration.inSeconds - 1;
        if (seconds < 0) {
          countdownTimer!.cancel();
        } else {
          duration = Duration(seconds: seconds);
        }
      });
    });
  }

  void stopTimer() {
    setState(() {
      countdownTimer!.cancel();
    });
  }

  void resetTimer() {
    stopTimer();
    setState(() {
      duration = Duration(seconds: 60);
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String seconds = duration.inSeconds > 0
        ? "00:${duration.inSeconds.toString()} "
        : "Code Expired ";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 25, right: 25, top: 75, bottom: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg-app-cloud.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [fadeBackground, background],
            ),
          ),
          child: Form(
            key: _formKey,
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Verification!",
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50, top: 7),
                    child: RichText(
                      text: TextSpan(
                          text: "We sent you an ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "SMS",
                              style: TextStyle(color: babyBlue),
                            ),
                            TextSpan(
                              text: " code on number ",
                            ),
                            TextSpan(
                              text: widget.number,
                              style: TextStyle(color: babyBlue),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: OTPTextField(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          controller: otpController,
                          length: 5,
                          width: 15,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 25),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 55,
                          fieldStyle: FieldStyle.box,
                          otpFieldStyle: OtpFieldStyle(
                            backgroundColor: white,
                            borderColor: Color.fromRGBO(31, 31, 31, 0.1),
                            enabledBorderColor: Color.fromRGBO(31, 31, 31, 0.1),
                          ),
                          outlineBorderRadius: 17,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (str) async {
                            debugPrint("Changed: " + str);
                          },
                          onCompleted: (pin) async {
                            print("Completed: " + pin);
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        seconds,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: darkRed,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Resend Code",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          resetTimer();
                          startTimer();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 69,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: Success()),
                            );
                          },
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 40,
                          ),
                          style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              elevation: 2,
                              primary: babyBlue,
                              shape: CircleBorder()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
