import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_button.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final _detailsController1 = TextEditingController();
  final _detailsController2 = TextEditingController();
  final _detailsController3 = TextEditingController();
  final _detailsController4 = TextEditingController();
  final _detailsController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Hero(
            child: Image.asset('assets/bg-app-cloud.png'),
            tag: 'bg',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
              left: 15.0,
              right: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: ThemeStyles.primaryText,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Create an account to get started\nwith Cargo Express',
                  style: ThemeStyles.secondaryText,
                ),
                SizedBox(height: 20),
                Text(
                  'First Name',
                  style: ThemeStyles.details,
                ),
                TextField(
                  controller: _detailsController1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Your E-mail',
                  style: ThemeStyles.details,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _detailsController2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: ThemeStyles.details,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(17)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: _detailsController3,
                    decoration: InputDecoration(
                      label: Text(
                        '+234',
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: ThemeStyles.details,
                ),
                TextField(
                  controller: _detailsController4,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Confirm Password',
                  style: ThemeStyles.details,
                ),
                TextField(
                  controller: _detailsController5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        ' Log In',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      onPressed: _onLogInPressed,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 100.0,
                      child: ShipifyButton(
                        onPressed: _onBackPressed,
                        text: 'Back',
                        fontSize: 25,
                        radius: 15,
                        color: Colors.black,
                        backgroundColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    /*ElevatedButton(
                          onPressed: null,
                          child: Text('Back',
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                      style: ButtonStyle(

                      ),),*/
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ShipifyButton(
                        onPressed: _onNextPressed,
                        text: 'Next',
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        fontSize: 25,
                        radius: 15,
                      ),
                    ),
                    /*ElevatedButton(onPressed: _onNextPressed,
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),)*/
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _onNextPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VerificationScreen()));
  }

  void _onBackPressed() {
    Navigator.pop(context);
  }

  void _onLogInPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }
}
