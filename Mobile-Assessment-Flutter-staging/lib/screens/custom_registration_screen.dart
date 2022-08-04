import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/widgets/custom_button.dart';
import 'package:mobile_assessment_flutter/widgets/header_text.dart';
import 'package:mobile_assessment_flutter/widgets/sign_in_text.dart';
import 'package:mobile_assessment_flutter/widgets/text_and_containers.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = 'Registration_screen';
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 110, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeader(
                    header: 'Welcome!',
                    subheader:
                        'Create an  account to get started \nwith Cargo Express.',
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  TextAndContainers(
                    text: isPersonal ? 'Full Name' : 'Business Name',
                    controller: controller1,
                  ),
                  TextAndContainers(
                    text: isPersonal ? 'Your E-mail' : 'Official E-mail',
                    controller: controller2,
                  ),
                  TextAndContainers(
                    text: isPersonal ? 'Phone Number' : 'Contact Number',
                    controller: controller3,
                    icon: Row(
                      children: const [
                        Text(
                          '+234',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black45,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                  TextAndContainers(
                    text: 'Password',
                    controller: controller4,
                  ),
                  TextAndContainers(
                    text: 'Confirm Password',
                    controller: controller5,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      const Center(
                        child: SignInText(),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: SizedBox(
                              width: size.width * .3,
                              height: size.height * .08,
                              child: const Center(
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black45),
                                ),
                              ),
                            ),
                          ),
                          CustomButton(
                            text: const Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white70),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                VerificationScreen.id,
                              );
                            },
                            size: Size(
                              size.width * .3,
                              size.height * .065,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
