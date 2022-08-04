import 'package:flutter/material.dart';

import '../../widgets/global_register_screen.dart';

class EcommerceRegisterScreen extends StatefulWidget {
  const EcommerceRegisterScreen({Key? key}) : super(key: key);

  @override
  _EcommerceRegisterScreenState createState() =>
      _EcommerceRegisterScreenState();
}

class _EcommerceRegisterScreenState extends State<EcommerceRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(top: false, bottom: false,
        child: Scaffold(
            body: SingleChildScrollView(
                child: GlobalRegisterScreen(
      labelText1: "Business Name",
      labelText2: "Official E-mail",
      labelText3: "Contact Number",
      labelText4: "Password",
      labelText5: "Confirm Password",
    ))));
  }
}
