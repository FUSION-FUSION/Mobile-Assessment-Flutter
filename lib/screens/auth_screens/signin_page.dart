import 'package:flutter/material.dart';
import '../account_type.dart';
import '../homepage.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFDEE4EB),
        body: Container(
          width: screenWidth,
          margin:
              EdgeInsets.only(top: screenHeight * 0.18, left: 20, right: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg-app-cloud.png'),
                repeat: ImageRepeat.repeatY),
          ),
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Text('Sign In',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Sign in to continue to Cargo Express',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w300)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Phone Number / E-mail',
                      style:
                          TextStyle(fontSize: 21, fontFamily: 'JosefinSans')),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      style: TextStyle(fontSize: 21, fontFamily: 'JosefinSans'),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Password',
                      style:
                          TextStyle(fontSize: 21, fontFamily: 'JosefinSans')),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(fontSize: 21, fontFamily: 'JosefinSans'),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: AlignmentDirectional.center,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          textStyle: TextStyle(
                              fontSize: 25,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.bold),
                          primary: Color(0xFF46A5B9),
                          side: BorderSide.none),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AccountTypePage()));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Create an Account'),
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      textStyle:
                          TextStyle(fontSize: 32, fontFamily: 'JosefinSans'),
                      primary: Color(0xFF46A5B9),
                      onPrimary: Colors.white,
                      minimumSize: Size(100, 70),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Padding(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        child: Text('Sign In')),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
