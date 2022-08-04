import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_text.dart';

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Dimensions.sizeHeightPercent(143),
          width: Dimensions.sizeWidthPercent(186),
          padding: EdgeInsets.only(
            left: Dimensions.sizeWidthPercent(12),
            right: Dimensions.sizeWidthPercent(12),
            top: Dimensions.sizeHeightPercent(20),
            bottom: Dimensions.sizeHeightPercent(9),
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Waybill History',
                style: GoogleFonts.poppins(
                  fontSize: Dimensions.sizeHeightPercent(18),
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
                  text: 'Records of all your waybills.',
                  size: 15.12,
                  color: AppColors.primaryBlack),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: Dimensions.sizeHeightPercent(23.18),
                  width: Dimensions.sizeWidthPercent(23.18),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryBlack, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.primaryWhite,
                      size: Dimensions.sizeHeightPercent(14.27),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: Dimensions.sizeWidthPercent(16)),
        Container(
          height: Dimensions.sizeHeightPercent(143),
          width: Dimensions.sizeWidthPercent(186),
          padding: EdgeInsets.only(
            left: Dimensions.sizeWidthPercent(12),
            right: Dimensions.sizeWidthPercent(12),
            top: Dimensions.sizeHeightPercent(20),
            bottom: Dimensions.sizeHeightPercent(9),
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get Help',
                style: GoogleFonts.poppins(
                  fontSize: Dimensions.sizeHeightPercent(18),
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
                  text: 'Get help & support from our team',
                  size: 15.12,
                  color: AppColors.primaryBlack),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: Dimensions.sizeHeightPercent(23.18),
                  width: Dimensions.sizeWidthPercent(23.18),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryBlack, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.primaryWhite,
                      size: Dimensions.sizeHeightPercent(14.27),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
