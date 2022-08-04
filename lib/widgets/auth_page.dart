import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/registration/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/screens/registration/sign_up_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin =true;
  @override

  Widget build(BuildContext context) {
    void toggle(){
      setState((){
        isLogin =!isLogin;
      });
    }
    return isLogin ? SignUpScreen(onClickedSignUp: toggle,):
    SignInScreen(onClickedSignUp: toggle,);
  }

}
