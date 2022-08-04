import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/custom_registration_screen.dart';
import 'package:mobile_assessment_flutter/screens/welcome_screen.dart';

class CongratulationScreen extends StatelessWidget {
  static const String id = 'Congratulation_screen';
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: const EdgeInsets.only(top: 110, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeader(
                      header: 'Congratulations!',
                      subheader:
                          'Your account as been successfully \ncreated.'),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 25, bottom: 60),
                    child: SizedBox(
                      height: size.height * .4,
                      width: size.width,
                      child: const Image(
                        image: AssetImage(
                          'assets/ic-congratulations.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: CustomButton(
                        text: const Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, .id);
                        },
                        size: Size(size.width * .5, size.height * .08)),
                  )
                ],
              )),
        )
      ],
    );
  }
}
