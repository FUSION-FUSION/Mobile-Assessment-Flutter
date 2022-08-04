import 'package:flutter/material.dart';



class CongratsPage extends StatelessWidget {
  const CongratsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFDEE4EB),
        body: Container(

          width: screenWidth,
          padding: EdgeInsets.only(top: screenHeight * 0.10, left: 20, right: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg-app-cloud.png'), repeat: ImageRepeat.repeatY),
          ),
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Text('Congratulations!',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('Your account has been successfully created.',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/ic-congratulations.png')),
                  ),
                  height: screenHeight * 0.5,
                ),


                Container(
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      primary: Color(0xFF46A5B9),
                      onPrimary: Colors.white,
                      minimumSize: Size(100, 70),

                    ),
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(
                      //     MaterialPageRoute(builder: (context) => HomePage())
                      // );
                    },
                    child: Padding(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        child: Text('Continue')
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
