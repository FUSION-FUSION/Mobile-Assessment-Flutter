import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/screens/tracking/custom_sheet.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              height: 10,
              width: 14,
              decoration: BoxDecoration(
                  color: kPrimaryWhite,
                  // borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.circle),
              child: Icon(Icons.arrow_back, size: 20, color: kPrimaryBlack)),
        ),
        centerTitle: true,
        title: Container(
          height: 37,
          width: 288,
          decoration: BoxDecoration(
            color: kPrimaryWhite,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'HH-INT-D9FD00-JBW-ORI',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11.95,
                  color: kPrimaryBlack,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle.png'),
                  fit: BoxFit.cover),
            ),
          ),
          CustomSheet(h: h),
        ],
      ),
    );
  }
}
