import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../utils/dimensions.dart';

class TrackingContainer extends StatelessWidget {
  const TrackingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Dimensions.sizeWidthPercent(23),
        right: Dimensions.sizeWidthPercent(23),
        top: Dimensions.sizeHeightPercent(23),
        bottom: Dimensions.sizeHeightPercent(33),
      ),
      height: Dimensions.sizeHeightPercent(136),
      width: Dimensions.sizeWidthPercent(388),
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        children: [
          Text('Track your waybill',
              style: GoogleFonts.poppins(
                fontSize: Dimensions.sizeHeightPercent(20),
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlack,
              )),
          SizedBox(height: Dimensions.sizeHeightPercent(6)),
          Container(
            height: Dimensions.sizeHeightPercent(44),
            width: Dimensions.sizeWidthPercent(323),
            decoration: BoxDecoration(
              color: AppColors.primaryWhite,
              border: Border.all(
                color: AppColors.lighterBlue,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(26),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.sizeHeightPercent(15),
                        vertical: Dimensions.sizeHeightPercent(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          height: Dimensions.sizeHeightPercent(14.26),
                          width: Dimensions.sizeWidthPercent(14.26),
                          child: Image.asset(
                            'assets/images/ic-search.png',
                          ),
                        ),
                        SizedBox(width: Dimensions.sizeWidthPercent(9.51)),
                        Text(
                          'WayBill Number',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: Dimensions.sizeHeightPercent(15.21),
                              color: AppColors.primaryBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: Dimensions.sizeHeightPercent(38),
                  width: Dimensions.sizeWidthPercent(81),
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.sizeHeightPercent(3),
                      vertical: Dimensions.sizeHeightPercent(3)),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlue,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text(
                      'Track',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: Dimensions.sizeHeightPercent(16),
                          color: AppColors.primaryWhite,
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
