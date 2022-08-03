import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/custom_appBar.dart';

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
        backgroundColor: const Color(0xffecedf1),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
            const customAppBar(
                title: 'Sign In',
                subtitle: 'Sign in to continue to Cargo Express'),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Padding(
                  padding: k16pxPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone number / Email',
                        style: knormalTextStyle,
                      ),
                      verticalSpaceTiny,
                      CustomTextField(
                        obscure: false,
                        textfieldcontroller: emphcontroller,
                        type: TextInputType.text,
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
                      verticalSpaceMedium,
                      Center(
                        child: TextButton(
                            onPressed: (() =>
                                Navigator.pushNamed(context, '/intro')),
                            child: const Text(
                              'Create an Account',
                              style: TextStyle(
                                fontSize: 21,
                                color: Color(0xff46a5ba),
                              ),
                            )),
                      ),
                      verticalSpaceLarge,
                      Center(
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/congrats'),
                          child: Container(
                            height: 70,
                            width: 200,
                            child: Center(
                                child: Text(
                              'Sign In',
                              style: kBigWhiteTextStyle,
                            )),
                            decoration: BoxDecoration(
                              color: const Color(0xff46a5ba),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ])),
        ));
  }
}
