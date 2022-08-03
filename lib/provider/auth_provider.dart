
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../firebase_service/auth_check.dart';
import '../main.dart';


class AuthProvider with ChangeNotifier {

  bool chooseUser = true;



  void user() {
    chooseUser = !chooseUser;
    notifyListeners();
  }

  Future logout()async{
    FirebaseAuth.instance.signOut();
    navigatorKey.currentState!.popAndPushNamed(AuthCheck.routeName);
  }
//register with phone
  final _auth= FirebaseAuth.instance;
  String? verificationCode;


  Future createUserWithPhone(phone)async{
    await _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: const Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential credential)async{
          await _auth.signInWithCredential(credential).then((value) async{
            if (value.user != null){
              print("user logged in");
              navigatorKey.currentState!.popUntil((route)=>route.isFirst);
            }
          });
        },
        verificationFailed: (FirebaseAuthException exception){
          print(exception);
        },
        codeSent: (String verificationID,int? resendToken){
          verificationCode =verificationID;
          notifyListeners();
        },
        codeAutoRetrievalTimeout:(String verificationID){
          verificationCode= verificationID;
          notifyListeners();
        });
    notifyListeners();
  }

}