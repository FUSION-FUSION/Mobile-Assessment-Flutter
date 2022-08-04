import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/custom_registration_screen.dart';
import 'package:mobile_assessment_flutter/widgets/custom_button.dart';
import 'package:mobile_assessment_flutter/widgets/header_text.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'Welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextHeader(
                  header: 'What kind of user are you?',
                  subheader: 'We will adapt the app to suit your \nneeds.',
                ),
                SizedBox(
                  height: size.height * .085,
                ),
                CustomButton(
                  text: Text(
                    'Personal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.85),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RegistrationScreen.id,
                    );
                  },
                  size: Size(
                    double.infinity,
                    size.height * .15,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: Text(
                    'E-commerce',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.85),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(
                          isPersonal: false,
                        ),
                      ),
                    );
                  },
                  size: Size(
                    double.infinity,
                    size.height * .15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
