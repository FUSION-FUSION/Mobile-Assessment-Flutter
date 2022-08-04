import 'package:flutter/material.dart';

class TotalAssetWidget_ extends StatelessWidget {
  const TotalAssetWidget_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(bottom: 20),
        height: 70,
        width: screenWidth * 0.92,
        decoration: BoxDecoration(
            color: Color(0xFFFCFDFF), borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(),
              width: 150,
              height: 80,
              padding: EdgeInsets.only(top: 18, left: 20),
              child: Container(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Total Asset',
                          style: TextStyle(
                              fontSize: 23, fontFamily: 'JosefinSans'),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'N 50,000.00',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
            //Second Row of Total Asset------------
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg-dashboard-balance.png'),
                    fit: BoxFit.cover),
              ),
              width: 228.5,
              child: Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 10),
                child: SizedBox(
                    height: 27,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        textStyle:
                            TextStyle(fontSize: 20, fontFamily: 'JosefinSans'),
                        primary: Color(0xFF46A5B9),
                        onPrimary: Colors.white,
                        minimumSize: Size(100, 70),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => CongratsPage()));
                      },
                      child: Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Wrap(
                            children: [
                              Text('Top up'),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    )),
              ),
            )
          ],
        ));
  }
}
