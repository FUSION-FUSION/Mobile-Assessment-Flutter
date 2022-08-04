import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../congrats_page.dart';


class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFDEE4EB),
        body: Container(

          width: screenWidth,
          padding: EdgeInsets.only(top: screenHeight * 0.18, left: 20, right: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg-app-cloud.png'), repeat: ImageRepeat.repeatY),
          ),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assetName'))
            ),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Text('Verification!',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 18, decoration: TextDecoration.none),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'We sent you an ',
                                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w300)
                            ),
                            TextSpan(
                                text: 'SMS ',
                                style: TextStyle(color: Color(0xFF46A5B9), fontWeight: FontWeight.w400)
                            ),
                            TextSpan(
                                text: 'code on \nnumber ',
                                style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w300)
                            ),
                            TextSpan(
                                text: '+2348108960610',
                                style: TextStyle(color: Color(0xFF46A5B9), fontWeight: FontWeight.w400)
                            )
                          ]
                      ),
                    )
                ),

                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFCFDFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Code Expired',
                      style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w400), textAlign: TextAlign.right),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text('Resend Code',
                      style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      primary: Color(0xFF46A5B9),
                      onPrimary: Colors.white,
                      minimumSize: Size(100, 70),

                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (context) => CongratsPage())
                      );
                    },
                    child: Container(
                        child: Icon(Icons.arrow_forward_sharp, size: 30,)
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
