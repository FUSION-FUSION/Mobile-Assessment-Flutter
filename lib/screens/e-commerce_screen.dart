import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xffecedf1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            customAppBar(
              title: Text(
                'Welcome!',
                style: kBigBlackTextStyle,
              ),
              subtitle: Text(
                'Create an account to get started with Cargo Express',
                style: kSmallTextStyle,
              ),
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
                        'Business Name',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: false,
                        textfieldcontroller: busnamecontroller,
                        type: TextInputType.text,
                      ),
                      verticalSpaceSmall,
                      Text(
                        'Official E-mail',
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
                        'Contact number',
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
