import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signin_page.dart';
import '../account_type.dart';

class EcommerceAccountSignUpPage extends StatelessWidget {
  const EcommerceAccountSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFDEE4EB),
        body: Container(

          width: screenWidth,
          margin: EdgeInsets.only( left: 20, right: 20),
          padding: EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg-app-cloud.png')),
          ),
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Text('Welcome!',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Create an account to get started with Cargo Express',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Business Name',
                    style: TextStyle(fontSize: 19),),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      style: TextStyle(fontSize: 20.0),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Official E-mail',
                    style: TextStyle(fontSize: 19),),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      style: TextStyle(fontSize: 20.0),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                      ),
                    )
                ),

                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Phone Number',
                    style: TextStyle(fontSize: 19),),
                ),
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.all(0),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(fontSize: 25.0),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              contentPadding: const EdgeInsets.only(left: 75.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              )
                          ),
                        )
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('+234',
                              style: TextStyle(fontSize: 20),),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        )
                    ),
                  ],

                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Password',
                      style: TextStyle(fontSize: 19)),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(fontSize: 23.0),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 7, left: 8),
                  child: Text('Confirm Password',
                      style: TextStyle(fontSize: 19)),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(fontSize: 23.0),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFCFDFF),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          )
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: AlignmentDirectional.center,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                          primary: Color(0xFF46A5B9),
                          side: BorderSide.none
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(
                            MaterialPageRoute(builder: (context) => SignInPage())
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(fontSize: 18, decoration: TextDecoration.none),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Already have an account? ',
                                      style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w300)
                                  ),
                                  TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(color: Color(0xFF46A5B9), fontWeight: FontWeight.bold)
                                  )
                                ]
                            ),
                          )
                      )
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                            primary: Color(0xFFF5F5F5),
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 70),

                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(builder: (context) => AccountTypePage())
                            );
                          },
                          child: Padding(
                              padding: EdgeInsets.only(right: 30, left: 30),
                              child: Text('Back', style: TextStyle(color: Colors.black,),)
                          ),
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                            primary: Color(0xFF46A5B9),
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 70),

                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(builder: (context) => AccountTypePage())
                            );
                          },
                          child: Padding(
                              padding: EdgeInsets.only(right: 30, left: 30),
                              child: Text('Next')
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}

