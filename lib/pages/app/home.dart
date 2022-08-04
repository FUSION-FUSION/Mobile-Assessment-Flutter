import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/pages/app/tracking.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Widget sameStateWidget() {
    return Container(
      height: 242,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white.withOpacity(0.75),
          image: DecorationImage(
              image: AssetImage("assets/ic-road-same-state.png"),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(69, 108, 208, 0.18),
              blurRadius: 24,
              offset: Offset(2, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 32, left: 13, right: 5, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Same State",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(height: 3, width: 18.75, color: babyBlue),
                  SizedBox(height: 7.5),
                  Expanded(
                    child: Text(
                      "Deliveries within the same state",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/ic-bike.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(25, 25),
                        alignment: Alignment.center,
                        elevation: 2,
                        primary: white,
                        shape: CircleBorder()),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget interStateWidget() {
    return Container(
      height: 242,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white.withOpacity(0.75),
          image: DecorationImage(
              image: AssetImage("assets/ic-road-interstate.png"),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(69, 108, 208, 0.18),
              blurRadius: 24,
              offset: Offset(2, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ic-curve.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                // top: 32,
                left: 13,
                right: 5,
                bottom: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Container(height: 30, color: Colors.red),
                  Text(
                    "Interstate",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(height: 3, width: 18.75, color: babyBlue),
                  SizedBox(height: 7.5),
                  Expanded(
                    child: Text(
                      "Deliveries outside your current state",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/Delivery Van.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomLeft),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(25, 25),
                        alignment: Alignment.center,
                        elevation: 2,
                        primary: white,
                        shape: CircleBorder()),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget charterWidget() {
    return Container(
      height: 242,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white.withOpacity(0.75),
          image: DecorationImage(
              image: AssetImage("assets/ic-road-charter.png"),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(69, 108, 208, 0.18),
              blurRadius: 24,
              offset: Offset(2, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ic-curve.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 13, right: 5, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Charter",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(height: 3, width: 18.75, color: babyBlue),
                  SizedBox(height: 7.5),
                  Expanded(
                    child: Text(
                      "Request a vehicle",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 105,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/ic-truck.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomLeft),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(25, 25),
                        alignment: Alignment.center,
                        elevation: 2,
                        primary: white,
                        shape: CircleBorder()),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget internationalWidget() {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            height: 242,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.white.withOpacity(0.75),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(69, 108, 208, 0.18),
                    blurRadius: 24,
                    offset: Offset(2, 4),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 32, left: 13, right: 5, bottom: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "International",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(height: 3, width: 18.75, color: babyBlue),
                        SizedBox(height: 7.5),
                        Expanded(
                          child: Text(
                            "Send packages to other countries",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("assets/ic-aeroplane.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomLeft),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          right: 15,
          child: Material(
            elevation: 0.5,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Coming Soon",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget historyWidget() {
    return Container(
      height: 150,
      width: 160,
      padding: EdgeInsets.only(top: 26, left: 13, right: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white.withOpacity(0.75),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(69, 108, 208, 0.18),
              blurRadius: 24,
              offset: Offset(2, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Waybill History",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Container(height: 3, width: 18.75, color: babyBlue),
          SizedBox(height: 7.5),
          Expanded(
            child: Text(
              "Records of all your waybills",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(25, 25),
                    alignment: Alignment.center,
                    elevation: 2,
                    primary: Colors.black,
                    shape: CircleBorder()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getHelpWidget() {
    return Container(
      height: 150,
      width: 160,
      padding: EdgeInsets.only(top: 26, left: 13, right: 5, bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white.withOpacity(0.75),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(69, 108, 208, 0.18),
              blurRadius: 24,
              offset: Offset(2, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get Help",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Container(height: 3, width: 18.75, color: babyBlue),
          SizedBox(height: 7.5),
          Expanded(
            child: Text(
              "Get help & support from our team",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(25, 25),
                    alignment: Alignment.center,
                    elevation: 2,
                    primary: Colors.black,
                    shape: CircleBorder()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 25, right: 25, top: 54, bottom: 100),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/Hamburger menu.png"),
                Text(
                  "Hello, John.",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  child: Stack(
                    children: [
                      Icon(CupertinoIcons.bell, size: 28),
                      Positioned(
                        child: Icon(
                          CupertinoIcons.circle_fill,
                          color: darkRed,
                          size: 10,
                        ),
                        right: 2,
                        top: 2,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.75),
                  image: DecorationImage(
                      image: AssetImage("assets/bg-dashboard-balance.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomRight),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(69, 108, 208, 0.18),
                      blurRadius: 24,
                      offset: Offset(2, 4),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\u20A650,000",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                      color: babyBlue,
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    height: 36,
                    width: 94,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Top Up",
                          style: TextStyle(
                            fontSize: 14,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_double_arrow_right_sharp,
                          size: 24,
                          color: white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 136,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.75),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(69, 108, 208, 0.18),
                      blurRadius: 24,
                      offset: Offset(2, 4),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Track your waybill",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      prefix: Padding(
                        padding: EdgeInsets.only(right: 9.5, left: 15),
                        child: Image.asset(
                          "assets/ic-search.png",
                          fit: BoxFit.contain,
                          height: 16,
                          width: 16,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.36),
                      hintText: "Waybill Number",
                      contentPadding: const EdgeInsets.only(
                          top: 0, bottom: 0, left: 0.0, right: 3.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: babyBlue),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      suffix: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Tracking()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 6, top: 6),
                          decoration: BoxDecoration(
                            color: babyBlue,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          width: 81,
                          child: Text(
                            "Track",
                            style: TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sameStateWidget(),
                interStateWidget(),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                charterWidget(),
                internationalWidget(),
              ],
            ),
            SizedBox(height: 30),
            Row(children: [
              Text(
                "Other Actions",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ]),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                historyWidget(),
                getHelpWidget(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
