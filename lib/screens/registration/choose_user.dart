import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';
import 'package:mobile_assessment_flutter/util/navigators.dart';
import 'package:mobile_assessment_flutter/widgets/auth_page.dart';
import 'package:mobile_assessment_flutter/widgets/button_widget.dart';
import 'package:provider/provider.dart';

import '../../provider/auth_provider.dart';
import '../../util/constants/styles.dart';

class ChooseUserScreen extends StatelessWidget {
  const ChooseUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: backgroundDesign,
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "What kind of user are \nyou?",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    color: textColor1),
              ),
              const Text(
                "We will adapt the app to suit your\nneeds.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: textColor1),
              ),
              const SizedBox(
                height: 48,
              ),
              ButtonWidget(
                buttoncolor: primaryColor,
                textcolor: Colors.white,
                buttonText: "Personal",
                onPressed: () {
                  Provider.of<AuthProvider>(context,listen: false).chooseUser =true;
                  changeScreen(context, const AuthPage());
                },
                buttonHieght: size.height * 0.15,
                buttonWidth: 0, fontsize: 40, fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ButtonWidget(
                buttoncolor: primaryColor,
                textcolor: Colors.white,
                buttonText: "E-commerce",
                onPressed: () {
                  Provider.of<AuthProvider>(context,listen: false).user();
                  changeScreen(context, const AuthPage());
                },
                buttonHieght: size.height * 0.15,
                buttonWidth: 0,
                fontsize: 40, fontWeight: FontWeight.w700,
              )
            ],
          ),
        ));
  }
}
