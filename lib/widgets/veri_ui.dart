import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utilities/ui_helpers.dart';

class Verii extends StatelessWidget {
  const Verii({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.redd,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final String redd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdce4e9),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Stack(children: [
          Stack(children: [
            Container(
              child: Image.asset('assets/images/bg-app-cloud.png'),
              width: double.infinity,
            ),
            Padding(
                padding: EdgeInsets.only(top: 130.56.h, left: 24.3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 'What kind of user are you?',
                    // title,

                    Padding(
                      padding: const EdgeInsets.only(right: 82.4),
                      child: Text(
                        'Verification!',
                        // title,
                        style: kappBarTitlestyle,
                      ),
                    ),

                    verticalSpaceCustom(4.h),
                    Padding(
                      padding: const EdgeInsets.only(right: 107.72),
                      child: RichText(
                        text: TextSpan(
                            text: 'We sent you an ',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'SMS ',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xff46a5ba),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              TextSpan(
                                text: 'code on number ',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              TextSpan(
                                text: '+2348108960610',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xff46a5ba),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ]),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 28.44.h, right: 24.3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                              key: _formKey,
                              child: PinCodeTextField(
                                appContext: context,
                                cursorColor: Colors.black,
                                pastedTextStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                enableActiveFill: true,
                                length: 5,
                                obscureText: false,
                                blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(18),
                                  selectedFillColor: Colors.white,
                                  fieldHeight: 60,
                                  fieldWidth: 50,
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.white,
                                  selectedColor: Colors.white,
                                  inactiveFillColor: Colors.white,
                                  activeFillColor: Colors.white,
                                ),
                                onChanged: (String value) {
                                  print(value);
                                },
                              )),
                          verticalSpaceCustom(6.34.h),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(redd,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ))),
                          ),
                          verticalSpaceCustom(22.h),
                          Center(
                            child: Text(
                              'Resend Code',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: Color(0xff1F1F1F),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                          ),
                          verticalSpaceCustom(53.h),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/congrats'),
                            child: Center(
                              child: CircleAvatar(
                                radius: 30.h,
                                backgroundColor: const Color(0xff46a5ba),
                                child: const Center(
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ]),
        ]))));
  }
}
