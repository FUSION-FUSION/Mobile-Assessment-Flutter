import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherOptions_ extends StatelessWidget {
  const OtherOptions_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 250,
      width: screenWidth * 1,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 20,
        children: [
          //---------------------First Package plan
          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 170,
              width: screenWidth * 0.43,
              decoration: BoxDecoration(
                color: Color(0xFFFCFDFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Waybill History',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'JosefinSans'),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 5, bottom: 8),
                              alignment: Alignment.centerLeft,
                              width: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: Color(0xFF46A5B9)),
                              ),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Records of all your waybills',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      height: 35,
                      width: double.infinity,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 7),
                        child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                textStyle: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                                primary: Colors.black,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => CongratsPage()));
                              },
                              child: Container(
                                  child: Icon(
                                Icons.arrow_forward_sharp,
                                size: 15,
                              )),
                            )),
                      )),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 170,
              width: screenWidth * 0.43,
              decoration: BoxDecoration(
                color: Color(0xFFFCFDFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Get Help',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'JosefinSans'),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 5, bottom: 8),
                              alignment: Alignment.centerLeft,
                              width: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: Color(0xFF46A5B9)),
                              ),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Get help & support from our team',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      height: 35,
                      width: double.infinity,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 7),
                        child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                textStyle: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                                primary: Colors.black,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => CongratsPage()));
                              },
                              child: Container(
                                  child: Icon(
                                Icons.arrow_forward_sharp,
                                size: 15,
                              )),
                            )),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
