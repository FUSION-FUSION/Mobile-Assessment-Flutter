import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/widgets/paddedLabel.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/textformfield.dart';

class Commerce extends StatefulWidget {
  const Commerce({Key? key}) : super(key: key);

  @override
  State<Commerce> createState() => _CommerceState();
}

class _CommerceState extends State<Commerce> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    busnamecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    passwordcontroller.dispose();
    cpasswordcontroller.dispose();
  }

  final busnamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final cpasswordcontroller = TextEditingController();
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
                          const paddedLabel(label: 'Business Name'),
                          CustomTextField(
                            obscure: false,
                            textfieldcontroller: busnamecontroller,
                            type: TextInputType.text,
                          ),
                          const paddedLabel(label: 'Official E-mail'),
                          CustomTextField(
                            obscure: false,
                            textfieldcontroller: emailcontroller,
                            type: TextInputType.emailAddress,
                          ),
                          const paddedLabel(label: 'Contact Number'),
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
                          verticalSpaceTiny,
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
            )
          ])),
        ));
  }
}
