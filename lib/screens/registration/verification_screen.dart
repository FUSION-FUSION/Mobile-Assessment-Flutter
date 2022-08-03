import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/registration/welcome_screen.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';
import 'package:mobile_assessment_flutter/util/navigators.dart';
import 'package:pinput/pinput.dart';

import '../../util/constants/styles.dart';

class OtpVerificationScreen extends StatelessWidget {
  static const routeName = "OtpVerificaton-Screen";

  final String? phoneNumber;

  const OtpVerificationScreen({Key? key, this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: backgroundDesign,
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Verification!",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: textColor1),
                ),
                RichText(
                    text: const TextSpan(
                        text: "we sent you an ",
                        style: TextStyle(color: textColor1,fontSize: 17,
                          fontWeight: FontWeight.w300,),
                        children: [
                      TextSpan(
                          text: " SMS ", style: TextStyle(color: primaryColor,fontSize: 17,
                      fontWeight: FontWeight.w400,)),
                      TextSpan(
                          text: " code on",
                          style: TextStyle(color: textColor1,fontSize: 17,
                          fontWeight: FontWeight.w300,)),
                    ])),
                RichText(
                    text: TextSpan(
                        text: "number ",
                        style: const TextStyle(color: Colors.black,fontSize: 17,
                          fontWeight: FontWeight.w300,),
                        children: [
                      TextSpan(
                          text: " $phoneNumber",
                          style: const TextStyle(color: primaryColor,fontSize: 15,
                            fontWeight: FontWeight.w400,)),
                    ])),
                const SizedBox(
                  height: 20,
                ),
                Pinput(
                  defaultPinTheme: PinTheme(
                    height: 56,
                      width: 56,
                      textStyle: const TextStyle(fontSize: 20,color: textColor1,fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white
                    )
                  )),
                  length: 6,
                  validator: (value) => value != null && value.length < 6
                      ? "Enter min. 6 characters"
                      : null,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) async {
                    // try{
                    //   print(pin);
                    //   await FirebaseAuth.instance.signInWithCredential(
                    //       PhoneAuthProvider.credential(
                    //           verificationId:
                    //           Provider.of<AuthProvider>(context,listen: false).verificationCode!,
                    //           smsCode: pin)).then((value)async {
                    //     if(value.user != null){
                    //       print("pass to home");
                    //       navigatorKey.currentState!.pushReplacementNamed(HomeScreen.routeName);
                    //     }
                    //   });}catch(e){
                    //   FocusScope.of(context).unfocus();
                    //   Utils.showSnackBar("inValid otp $e");
                    // }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "counter",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: const Text(
                      "Resend Code",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: textColor1),
                    ),
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15)),
                      onPressed: () {changeScreenReplacement(context, const WelcomeScreen());},
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
