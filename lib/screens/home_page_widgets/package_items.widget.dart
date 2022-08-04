import 'package:flutter/material.dart';

class PackageItemsWidget_ extends StatelessWidget {
  const PackageItemsWidget_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
              height: 230,
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
                            'Same State',
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
                              'Deliveries within the same state',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 97,
                    margin: EdgeInsets.only(top: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ic-road-same-state.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          width: 90,
                          height: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/ic-bike.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                              height: 27,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  textStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  primary: Color(0xFFFCFDFF),
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
                                  color: Colors.black,
                                )),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //---------------------Second Package plan
          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 230,
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
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ic-curve.png'),
                            fit: BoxFit.contain)),
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
                            'InterState',
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
                              'Deliveries outside your current state',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 97,
                    margin: EdgeInsets.only(top: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ic-road-interstate.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Delivery Van.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                              height: 27,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  textStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  primary: Color(0xFFFCFDFF),
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
                                  color: Colors.black,
                                )),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ------------------------------- Third Package Item
          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 230,
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
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ic-curve.png'),
                            fit: BoxFit.contain)),
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
                            'Charter',
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
                              'Request a vehicle',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 97,
                    margin: EdgeInsets.only(top: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ic-road-interstate.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/ic-truck.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                              height: 27,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  textStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  primary: Color(0xFFFCFDFF),
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
                                  color: Colors.black,
                                )),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ---------------- Forth Package Plan
          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 230,
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
                            'InterState',
                            style: TextStyle(
                                color: Colors.grey,
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
                              'Deliveries outside your current state',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'JosefinSans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 97,
                    margin: EdgeInsets.only(top: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/ic-aeroplane.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 10, right: 10),
                          child: SizedBox(
                              height: 27,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontSize: 15, fontFamily: 'JosefinSans'),
                                  primary: Color(0xFFFCFDFF),
                                  onPrimary: Colors.black,
                                ),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => CongratsPage()));
                                },
                                child: Container(child: Text('coming soon')),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
