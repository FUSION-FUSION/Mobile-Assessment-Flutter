import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_assessment_flutter/pages/app/home.dart';
import 'package:mobile_assessment_flutter/pages/auth/intro.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool obsecureText = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _submitForm(context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 25, right: 25, top: 75, bottom: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg-app-cloud.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [fadeBackground, background],
            ),
          ),
          child: Form(
            key: _formKey,
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50, top: 7),
                    child: Text(
                      "Sign in to continue to Cargo Express",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Text(
                    "Phone Number / E-mail",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: loginController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value must not be empty";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: passwordController,
                    obscureText: obsecureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFillWhite,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: deepPurple),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      suffixIcon: IconButton(
                        icon: obsecureText
                            ? Icon(CupertinoIcons.eye_slash, size: 25)
                            : Icon(CupertinoIcons.eye, size: 25),
                        onPressed: () {
                          setState(() {
                            obsecureText = !obsecureText;
                          });
                        },
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'password must not be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Create an Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: babyBlue,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Intro()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(70, 165, 186, 0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ]),
                        height: 64,
                        width: 135,
                        child: ElevatedButton(
                          onPressed: () {
                            _submitForm(context);
                          },
                          child: Text("Sign In"),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            primary: babyBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
