import'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/sign_in/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/view/widgets/custom_button.dart';
import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';

class CongratulationScreen extends StatelessWidget {
  static String routeName = '/congratulation_screen';
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBackground,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Container(
                    height: height * 0.3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(backgroundAppCloud),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Congratulations!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.06, vertical: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Your account has been successfully \ncreated',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    height: height * 0.35,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(icCongratulation),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  CustomButton( height: height * 0.065,
                    width: width * 0.45,
                    fontSize: 24,
                  text: 'Continue',
                    press: (){
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
