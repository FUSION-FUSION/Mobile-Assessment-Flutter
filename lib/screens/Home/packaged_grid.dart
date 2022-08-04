import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class PackageGrid extends StatelessWidget {
  const PackageGrid({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 15.52,
      crossAxisSpacing: 20,
      childAspectRatio: 0.7,
      children: [
        PackageCard1(h: h),
        PackageCard2(h: h),
        PackageCard3(h: h),
        PackageCard4(h: h),
      ],
    );
  }
}

class PackageCard4 extends StatelessWidget {
  const PackageCard4({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        borderRadius: BorderRadius.circular(11.09),
      ),
      child: Stack(
        children: [
          Container(
            color: kPrimaryWhite,
            child: Stack(
              children: [
                Positioned(
                  top: 130,
                  child: Image.asset(
                    'assets/images/ic-aeroplane.png',
                    scale: 4,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: h * 0.03),
                      Text(
                        'International',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.14,
                            color: kPrimaryBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      Padding(
                        padding: EdgeInsets.only(right: 140),
                        child: Divider(
                          height: 3,
                          color: kPrimaryBlue,
                          thickness: 4,
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      Text(
                        'Send packages to other countries',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.12,
                            color: kPrimaryBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            width: 175,
            color: kPrimaryWhite.withOpacity(0.6),
          ),
          Positioned(
            bottom: 22,
            left: 100,
            child: Container(
              height: 18.14,
              width: 75.85,
              decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  borderRadius: BorderRadius.circular(9.18),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 200, 202, 205),
                      blurRadius: 15,
                      offset: Offset(1, 1),
                    )
                  ]),
              child: Text(
                'Coming Soon',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 9.07,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PackageCard3 extends StatelessWidget {
  const PackageCard3({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        borderRadius: BorderRadius.circular(11.09),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 200, 202, 205),
        //     blurRadius: 26,
        //     offset: Offset(2, 4),
        //   )
        // ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11.09),
              child: Image.asset(
                'assets/images/ic-road-charter.png',
                scale: 4,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 135,
            child: Container(
              height: 23.18,
              width: 23.28,
              decoration:
                  BoxDecoration(color: kPrimaryWhite, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: kPrimaryBlack,
                size: 20,
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Image.asset(
              'assets/images/ic-truck.png',
              scale: 4,
            ),
          ),
          Positioned(
            top: 10,
            child: Image.asset(
              'assets/images/ic-curve.png',
              scale: 3.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.03),
                Text(
                  'Charter',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.14,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
                Padding(
                  padding: EdgeInsets.only(right: 140),
                  child: Divider(
                    height: 3,
                    color: kPrimaryBlue,
                    thickness: 4,
                  ),
                ),
                SizedBox(height: h * 0.01),
                Text(
                  'Request a vehicle',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.12,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PackageCard2 extends StatelessWidget {
  const PackageCard2({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        borderRadius: BorderRadius.circular(11.09),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 200, 202, 205),
        //     blurRadius: 26,
        //     offset: Offset(2, 4),
        //   )
        // ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11.09),
              child: Image.asset(
                'assets/images/ic-road-interstate.png',
                scale: 4,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 135,
            child: Container(
              height: 23.18,
              width: 23.28,
              decoration:
                  BoxDecoration(color: kPrimaryWhite, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: kPrimaryBlack,
                size: 20,
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Image.asset(
              'assets/images/Delivery Van.png',
              scale: 4,
            ),
          ),
          Positioned(
            top: 8,
            child: Image.asset(
              'assets/images/ic-curve.png',
              scale: 3.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.03),
                Text(
                  'Interstate',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.14,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
                Padding(
                  padding: EdgeInsets.only(right: 140),
                  child: Divider(
                    height: 3,
                    color: kPrimaryBlue,
                    thickness: 4,
                  ),
                ),
                SizedBox(height: h * 0.01),
                Text(
                  'Deliveries outside your current state',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.12,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PackageCard1 extends StatelessWidget {
  const PackageCard1({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        borderRadius: BorderRadius.circular(11.09),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 200, 202, 205),
        //     blurRadius: 26,
        //     offset: Offset(2, 4),
        //   )
        // ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11.09),
              child: Image.asset(
                'assets/images/ic-road-same-state.png',
                scale: 4,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 135,
            child: Container(
              height: 23.18,
              width: 23.28,
              decoration:
                  BoxDecoration(color: kPrimaryWhite, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: kPrimaryBlack,
                size: 20,
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Image.asset(
              'assets/images/ic-bike.png',
              scale: 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.03),
                Text(
                  'Same State',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.14,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
                Padding(
                  padding: EdgeInsets.only(right: 140),
                  child: Divider(
                    height: 3,
                    color: kPrimaryBlue,
                    thickness: 4,
                  ),
                ),
                SizedBox(height: h * 0.01),
                Text(
                  'Deliveries within the same state',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.12,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
