import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_assessment_flutter/screens/registration/verification_screen.dart';

import '../main.dart';
import '../screens/home/home_screen.dart';
import '../util/utils.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;


  bool isLogin = true;

  Future signup(context, email, password,name,formKey) async {
    //validation
    final isValid = formKey.currentState!.validate();
    if(!isValid)return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    try {
      var newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = newUser.user;
      user?.updateDisplayName(name); //added this line
      if (newUser != null) {
        navigatorKey.currentState!.pushReplacementNamed(OtpVerificationScreen.routeName);
        // navigatorKey.currentState!.popUntil((route)=>route.isFirst);

      }
    }on FirebaseAuthException catch (e) {
      print(e);
      //show snackbar if there is any error
      Utils.showSnackBar(e.message);
      Navigator.pop(context);
    }
  }

  Future signin(email, password, context,formKey) async {
    final isValid = formKey.currentState!.validate();
    if(!isValid)return;
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    try {
      var newUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        navigatorKey.currentState!.popUntil((route) => route.isFirst);////pushReplacementNamed(HomeScreen.routeName);
      }
    }on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
      Navigator.pop(context);
    }
  }



  Future signout() async {
    return _auth.signOut();

  }
}
