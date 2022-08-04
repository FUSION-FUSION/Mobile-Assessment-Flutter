import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/screens/Home/dashboard_card.dart';
import 'package:mobile_assessment_flutter/screens/Home/packaged_grid.dart';
import 'package:mobile_assessment_flutter/screens/Home/waybill_card.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: h * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text(
                  'Hello,John.',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/ic-notification.png',
                  scale: 4,
                ),
              ],
            ),
            SizedBox(height: h * 0.02),
            DashBoardCard(),
            SizedBox(height: h * 0.02),
            WayBillCard(h: h, w: w),
            SizedBox(height: h * 0.02),
            Text(
              'Send a package',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: kPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            PackageGrid(h: h),
            SizedBox(height: h * 0.02),
            Text(
              'Other Actions',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: kPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 143,
                        width: 170,
                        decoration: BoxDecoration(
                          color: kPrimaryWhite,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.41),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: h * 0.03),
                              Text(
                                'Waybill History',
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
                                'Records of all your waybill',
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
                      ),
                      Positioned(
                        bottom: 5,
                        left: 137,
                        child: Container(
                          height: 23.18,
                          width: 23.28,
                          decoration: BoxDecoration(
                              color: kPrimaryBlack, shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: kPrimaryWhite,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 143,
                        width: 170,
                        decoration: BoxDecoration(
                          color: kPrimaryWhite,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.41),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: h * 0.03),
                              Text(
                                'Get Help',
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
                                'Get help and support from our team',
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
                      ),
                      Positioned(
                        bottom: 5,
                        left: 137,
                        child: Container(
                          height: 23.18,
                          width: 23.28,
                          decoration: BoxDecoration(
                              color: kPrimaryBlack, shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: kPrimaryWhite,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.03),
          ],
        ),
      ),
    );
  }
}
