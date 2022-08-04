import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/dashboard_screen.dart';
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
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/bg-app-cloud.png'), fit: BoxFit.cover),
    ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign In', style: ThemeStyles.primaryText,),
              Text('Sign in to continue to Cargo Express', style: ThemeStyles.secondaryText,),
              Text('Phone Number/Email', style: ThemeStyles.details,),
              SignForm(),
              Text('Password', style: ThemeStyles.details,),
              SignForm(),
              ShipifyTextButton(
                onPressed: null,
                text: 'Create an Account',
                color: Colors.blue,
                fontSize: 20,
              ),
              ShipifyButton(
                text: 'Sign In',
                onPressed: _onPressed,
                radius: 15,
                fontSize: 30,
                color: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),

    );
  }

  _onPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoardScreen(),));
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
    ),);
  }
}

