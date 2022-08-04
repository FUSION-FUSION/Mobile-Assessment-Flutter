import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/app_text.dart';

class SameState extends StatelessWidget {
  const SameState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.sizeHeightPercent(242),
      width: Dimensions.sizeWidthPercent(186),
      padding: EdgeInsets.only(
        top: Dimensions.sizeHeightPercent(10),
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        borderRadius: BorderRadius.circular(11.09),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11.09),
              child: Image.asset(
                'assets/images/ic-road-same-state.png',
              ),
            ),
          ),
          Positioned(
            bottom: Dimensions.sizeHeightPercent(20),
            left: Dimensions.sizeWidthPercent(150),
            child: Container(
              height: Dimensions.sizeHeightPercent(23.18),
              width: Dimensions.sizeWidthPercent(23.28),
              decoration: const BoxDecoration(
                  color: AppColors.primaryWhite, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: AppColors.primaryBlack,
                size: Dimensions.sizeHeightPercent(20),
              ),
            ),
          ),
          Positioned(
            left: -5,
            bottom: Dimensions.sizeHeightPercent(5),
            child: SizedBox(
              height: Dimensions.sizeHeightPercent(104.07),
              width: Dimensions.sizeWidthPercent(114),
              child: Image.asset(
                'assets/images/ic-bike.png',
              ),
            ),
          ),
          Positioned(
              child: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.sizeWidthPercent(15),
                top: Dimensions.sizeHeightPercent(32)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Same State',
                  style: GoogleFonts.poppins(
                    fontSize: Dimensions.sizeHeightPercent(18.14),
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryBlack,
                  ),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(5.64)),
                Container(
                  height: Dimensions.sizeHeightPercent(3.13),
                  width: Dimensions.sizeWidthPercent(18.75),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlue,
                    borderRadius:
                        BorderRadius.circular(Dimensions.sizeWidthPercent(7)),
                  ),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(7.38)),
                AppText(
                    text: 'Deliveries within the same state',
                    size: 15.12,
                    color: AppColors.primaryBlack),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
