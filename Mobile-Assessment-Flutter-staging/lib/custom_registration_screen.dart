// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/welcome_screen.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key, this.isPersonal = true}) : super(key: key);
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final bool isPersonal;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: const EdgeInsets.only(top: 60, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextHeader(
                      header: 'Welcome!',
                      subheader:
                          'Create an  account to get started \nwith Cargo Express.'),
                  SizedBox(height: size.height * .02),
                  TextAndContainers(
                      text: isPersonal ? 'Full Name' : 'Business Name',
                      controller: controller1),
                  TextAndContainers(
                      text: isPersonal ? 'Your E-mail' : 'Official E-mail',
                      controller: controller2),
                  TextAndContainers(
                      text: isPersonal ? 'Phone Number' : 'Contact Number',
                      controller: controller3),
                  TextAndContainers(text: 'Password', controller: controller4),
                  TextAndContainers(
                      text: 'Confirm Password', controller: controller5),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Center(
                        child: SignInText(),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: size.width * .3,
                              height: size.height * .08,
                              child: Center(
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          CustomButton(
                            text: 'Next',
                            onPressed: () {},
                            size: Size(size.width * .3, size.height * .08),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    );
  }
}

class TextHeader extends StatelessWidget {
  const TextHeader({
    Key? key,
    required this.header,
    required this.subheader,
  }) : super(key: key);
  final String header, subheader;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        SizedBox(height: size.height * 0.01),
        Text(
          subheader,
        ),
      ],
    );
  }
}

class SignInText extends StatelessWidget {
  const SignInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          text: 'Already have an account?',
          style: TextStyle(color: Colors.grey),
          children: const <TextSpan>[
            TextSpan(
              text: ' Log in',
              style: TextStyle(color: Colors.lightGreenAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class TextAndContainers extends StatelessWidget {
  const TextAndContainers(
      {Key? key, required this.text, required this.controller})
      : super(key: key);
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(),
          ),
          TextInputField(controller: controller)
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final Color? color;
  const TextFieldContainer({
    Key? key,
    required this.child,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height ?? size.height * 0.065,
      width: size.width,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      child: child,
    );
  }
}

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  const TextInputField({
    Key? key,
    this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: TextFieldContainer(
        height: height * .055,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText ?? '',
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
            ),
            //TextFormField Validator,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'This field can\'t be empty';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.disabled,
          ),
        ),
      ),
    );
  }
}
