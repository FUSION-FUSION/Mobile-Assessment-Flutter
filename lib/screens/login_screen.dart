import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/widgets/custom_appBar.dart';
import 'package:mobile_assessment_flutter/widgets/paddedLabel.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/textformfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emphcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emphcontroller.dispose();
    passwordcontroller.dispose();
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(right: 86.73.w),
                child: Text(
                  'Sign In',
                  // title,
                  style: kappBarTitlestyle,
                ),
              ),
              verticalSpaceCustom(4.h),
              Padding(
                padding: EdgeInsets.only(right: 80.06.w),
                child: Text(
                  'Sign in to Cargo Express',
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
                    paddedLabel(label: 'Phone number / Email'),
                    CustomTextField(
                      obscure: false,
                      textfieldcontroller: emphcontroller,
                      type: TextInputType.text,
                    ),
                    paddedLabel(label: 'Password'),
                    CustomTextField(
                      obscure: true,
                      textfieldcontroller: passwordcontroller,
                      type: TextInputType.text,
                    ),
                    verticalSpaceCustom(41.h),
                    Center(
                      child: TextButton(
                          onPressed: (() =>
                              Navigator.pushNamed(context, '/intro')),
                          child: Text(
                            'Create an Account',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              color: Color(0xff46a5ba),
                              fontSize: 18.13.sp,
                              fontWeight: FontWeight.w600,
                            )),
                          )),
                    ),
                    verticalSpaceCustom(75.33.h),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/home'),
                        child: Container(
                          height: 71,
                          width: 182,
                          child: Center(
                              child: Text(
                            'Sign In',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.w500,
                            )),
                          )),
                          decoration: BoxDecoration(
                            color: const Color(0xff46a5ba),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ]))));
  }
}
