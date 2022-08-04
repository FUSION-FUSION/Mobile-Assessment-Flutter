import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/sign_in.dart';

class SignInText extends StatelessWidget {
  const SignInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.id);
      },
      child: RichText(
        text: const TextSpan(
          text: 'Already have an account?',
          style: TextStyle(color: Colors.grey),
          children: <TextSpan>[
            TextSpan(
              text: ' Log in',
              style: TextStyle(color: Colors.lightGreenAccent),
            ),
          ],
        ),
      ),
    );
  }
}
