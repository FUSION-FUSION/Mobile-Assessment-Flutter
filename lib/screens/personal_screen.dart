import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:mobile_assessment_flutter/widgets/textformfield.dart';

import '../widgets/custom_appBar.dart';

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
      backgroundColor: const Color(0xffecedf1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const customAppBar(
              title: 'Welcome!',
              subtitle: 'Create an account to get started with Cargo Express',
            ),
            Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Padding(
                  padding: k16pxPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: false,
                        textfieldcontroller: fullnamecontroller,
                        type: TextInputType.text,
                      ),
                      verticalSpaceSmall,
                      Text(
                        'Your E-mail',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: false,
                        textfieldcontroller: emailcontroller,
                        type: TextInputType.emailAddress,
                      ),
                      verticalSpaceSmall,
                      Text(
                        'Phone number',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
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
                      verticalSpaceSmall,
                      Text(
                        'Password',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: true,
                        textfieldcontroller: passwordcontroller,
                        type: TextInputType.text,
                      ),
                      verticalSpaceSmall,
                      Text(
                        'Confirm Password',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: true,
                        textfieldcontroller: cpasswordcontroller,
                        type: TextInputType.text,
                      ),
                      verticalSpaceMedium,
                      Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'Already have an account?',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Log In',
                                    style: const TextStyle(
                                        color: const Color(0xff46a5ba),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(context, '/login');
                                      })
                              ]),
                        ),
                      ),
                      verticalSpaceMedium,
                      Row(
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
                                style: knormalTextStyle,
                              )),
                              decoration: BoxDecoration(
                                  color: const Color(0xffecedf1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white)),
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
                                style: knormalTextStyle,
                              )),
                              decoration: BoxDecoration(
                                color: const Color(0xff46a5ba),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          )
                        ],
                      ),
                      verticalSpaceSmall
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
