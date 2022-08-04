import 'package:flutter/material.dart';

import '../../widgets/global_register_screen.dart';

class PersonalRegisterScreen extends StatefulWidget {
  const PersonalRegisterScreen({Key? key}) : super(key: key);

  @override
  _PersonalRegisterScreenState createState() => _PersonalRegisterScreenState();
}

class _PersonalRegisterScreenState extends State<PersonalRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(top: false, bottom: false,
        child: Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
                child: GlobalRegisterScreen(
                  labelText1: "Full Name",
                  labelText2: "Your E-mail",
                  labelText3: "Phone Number",
                  labelText4: "Password",
                  labelText5: "Confirm Password",
    ))));
  }
}
