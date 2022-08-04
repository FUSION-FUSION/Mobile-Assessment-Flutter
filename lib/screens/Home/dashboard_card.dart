import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 388,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: kPrimaryWhite,
        image: DecorationImage(
            image: AssetImage('assets/images/bg-dashboard-balance.png'),
            fit: BoxFit.contain,
            alignment: Alignment.centerRight),
        borderRadius: BorderRadius.circular(20),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 200, 202, 205),
        //     blurRadius: 26,
        //     offset: Offset(2, 4),
        //   )
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Total Balance',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.16,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
              Text(
                '# 50,000',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 34,
              width: 94,
              decoration: BoxDecoration(
                color: kPrimaryBlue,
                borderRadius: BorderRadius.circular(17.47),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Top up',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.56,
                        color: kPrimaryWhite,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.double_arrow,
                    color: kPrimaryWhite,
                    size: 16,
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
