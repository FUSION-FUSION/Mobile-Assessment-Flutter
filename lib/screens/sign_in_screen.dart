import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/dashboard_screen.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_button.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_text_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            child: Image.asset('assets/bg-app-cloud.png'),
            tag: 'bg',
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 70.0, right: 25.0, left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: ThemeStyles.primaryText,
                  ),
                  Text(
                    'Sign in to continue to Cargo Express',
                    style: ThemeStyles.secondaryText,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Phone Number/Email',
                    style: ThemeStyles.details,
                  ),
                  SignForm(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: ThemeStyles.details,
                  ),
                  SignForm(),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ShipifyTextButton(
                      onPressed: _onCreatePressed,
                      text: 'Create an Account',
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 160.0,
                      height: 70.0,
                      child: ShipifyButton(
                        text: 'Sign In',
                        onPressed: _onPressed,
                        radius: 15,
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onPressed() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashBoardScreen(),
        ));
  }

  _onCreatePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            gapPadding: 10.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            gapPadding: 10.0,
          ),
        ),
      ),
    );
  }
}
