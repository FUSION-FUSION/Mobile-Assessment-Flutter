import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class WayBillCard extends StatelessWidget {
  const WayBillCard({
    Key? key,
    required this.h,
    required this.w,
  }) : super(key: key);

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      width: 388,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        borderRadius: BorderRadius.circular(20),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 200, 202, 205),
        //     blurRadius: 26,
        //     offset: Offset(2, 4),
        //   )
        // ],
      ),
      child: Column(
        children: [
          Text(
            'Track your waybill',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: kPrimaryBlack,
              ),
            ),
          ),
          SizedBox(height: h * 0.02),
          Container(
            height: 44,
            width: 323,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                color: kPrimaryWhite,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: kPrimaryBlue, width: 1)),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/ic-search.png',
                  scale: 3,
                ),
                SizedBox(width: w * 0.02),
                Text(
                  'WayBill Number',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.21,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                SizedBox(width: w * 0.16),
                Container(
                  height: 38,
                  width: 81,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text(
                      'Track',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kPrimaryWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
