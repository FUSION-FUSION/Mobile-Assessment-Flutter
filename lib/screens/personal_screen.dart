import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:mobile_assessment_flutter/widgets/textformfield.dart';

import '../widgets/paddedLabel.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  final _formKey = GlobalKey<FormState>();
  final fullnamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final cpasswordcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    fullnamecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    passwordcontroller.dispose();
    cpasswordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdce4e9),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Stack(children: [
            Container(
              child: Image.asset('assets/images/bg-app-cloud.png'),
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: 130.56.h, left: 22.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 86.73.w),
                    child: Text(
                      'Welcome!',
                      // title,
                      style: kappBarTitlestyle,
                    ),
                  ),
                  verticalSpaceCustom(4.h),
                  Padding(
                    padding: EdgeInsets.only(right: 80.06.w),
                    child: Text(
                      'Create an account to get started with Cargo Express',
                      // subtitle,
                      style: kappBarsubTitlestyle,
                    ),
                  ),
                  Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const paddedLabel(label: 'Full Name'),
                          // verticalSpaceCustom(6.h),
                          CustomTextField(
                            obscure: false,
                            textfieldcontroller: fullnamecontroller,
                            type: TextInputType.text,
                          ),

                          const paddedLabel(label: 'Your Email'),

                          CustomTextField(
                            obscure: false,
                            textfieldcontroller: emailcontroller,
                            type: TextInputType.emailAddress,
                          ),

                          const paddedLabel(label: 'Phone Number'),

                          CustomTextField(
                            prefix: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  '+234',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            obscure: false,
                            textfieldcontroller: phonecontroller,
                            type: TextInputType.phone,
                          ),

                          const paddedLabel(label: 'Password'),

                          CustomTextField(
                            obscure: true,
                            textfieldcontroller: passwordcontroller,
                            type: TextInputType.text,
                          ),

                          const paddedLabel(label: 'Confirm Password'),

                          CustomTextField(
                            obscure: true,
                            textfieldcontroller: cpasswordcontroller,
                            type: TextInputType.text,
                          ),
                          verticalSpaceCustom(27.h),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Already have an account?',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Log In',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: const Color(0xff46a5ba),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(
                                                context, '/login');
                                          })
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 37.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (() => Navigator.pop(context)),
                                  child: Container(
                                    height: 60,
                                    width: 150,
                                    child: Center(
                                        child: Text(
                                      'Back',
                                      style: kblacksmallbutttonstyle,
                                    )),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffecedf1),
                                        borderRadius: BorderRadius.circular(20),
                                        border:
                                            Border.all(color: Colors.white)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Navigator.pushNamed(context, '/verify'),
                                  child: Container(
                                    height: 60,
                                    width: 150,
                                    child: Center(
                                        child: Text(
                                      'Next',
                                      style: kwhitesmallbutttonstyle,
                                    )),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff46a5ba),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ])),
        ));
  }
}
