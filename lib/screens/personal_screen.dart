import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';


class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 38.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome!',
                style: ThemeStyles.primaryText,
              ),
              Text('Create an account to get started\nwith Cargo Express'),
              Text(
                'Full Name',
                style: ThemeStyles.details,
              ),
              TextField(
                controller: detailsController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Text('Your E-mail',
              style: ThemeStyles.details,),
              TextField(
                controller: detailsController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Text('Phone Number',
                style: ThemeStyles.details,),
              TextField(
                controller: detailsController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Text('Password',
                style: ThemeStyles.details,),
              TextField(
                controller: detailsController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Text('Confirm Password',
                style: ThemeStyles.details,),
              TextField(
                controller: detailsController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Row(
                children: [
                  Text('Already have an account?'),
                  Text(' Log In'),
                ],
              ),

              Row(
                children: [
                  ElevatedButton(
                      onPressed: null,
                      child: Text('Back',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  style: ButtonStyle(
                    
                  ),),
                  ElevatedButton(onPressed: _onNextPressed,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),)
                ],
              )

            ],

          ),
        ),
      ),
    );
  }

  void _onNextPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
  }

  void _onBackPressed() {
    Navigator.pop(context);
  }
}
