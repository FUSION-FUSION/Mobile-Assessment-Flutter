import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utilities/ui_helpers.dart';

class Veri extends StatefulWidget {
  const Veri({Key? key}) : super(key: key);

  @override
  State<Veri> createState() => _VeriState();
}

class _VeriState extends State<Veri> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffecedf1),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  color: const Color(0xffdce4e9),
                  child: Image.asset('assets/images/bg-app-cloud.png'),
                  width: double.infinity,
                ),
                Padding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verification!',
                        style: kBigBlackTextStyle,
                      ),

                      verticalSpaceSmall,
                      // Text(
                      RichText(
                        text: const TextSpan(
                            text: 'We sent you an ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'SMS ',
                                style: TextStyle(
                                    color: Color(0xff46a5ba),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: 'code on number ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                              TextSpan(
                                text: '+2348108960610',
                                style: TextStyle(
                                    color: Color(0xff46a5ba),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(
                      top: 130.56.h, left: 26.33.w, right: 82.4.w),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                child: Column(
                  children: [
                    Form(
                        key: _formKey,
                        child: PinCodeTextField(
                          appContext: context,
                          cursorColor: Colors.black,
                          pastedTextStyle: TextStyle(
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
                      child: Text(
                        'Code Expired',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                    verticalSpaceCustom(53.h),
                    Center(
                      child: Text(
                        'Resend Code',
                        style: knormalTextStyle,
                      ),
                    ),
                    verticalSpaceCustom(36.h),
                    CircleAvatar(
                      radius: 30.h,
                      backgroundColor: Color(0xff46a5ba),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
