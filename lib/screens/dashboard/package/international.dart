import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_text.dart';

class International extends StatelessWidget {
  const International({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.sizeHeightPercent(316),
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
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Positioned(
                    left: Dimensions.sizeWidthPercent(1.57),
                    bottom: Dimensions.sizeHeightPercent(0.7),
                    child: SizedBox(
                      height: Dimensions.sizeHeightPercent(122.56),
                      width: Dimensions.sizeWidthPercent(122.1),
                      child: Image.asset(
                        'assets/images/ic-aeroplane.png',
                      ),
                    ),
                  ),
                  Positioned(
                      child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.sizeWidthPercent(15),
                        right: Dimensions.sizeWidthPercent(15),
                        top: Dimensions.sizeHeightPercent(32)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'International',
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
                            borderRadius: BorderRadius.circular(
                                Dimensions.sizeWidthPercent(7)),
                          ),
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(7.38)),
                        AppText(
                            text: 'Request a vehichle',
                            size: 15.12,
                            color: AppColors.primaryBlack),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            //Place container with low opacity here
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  color: AppColors.primaryWhite.withOpacity(0.5),
                )),

            Positioned(
              bottom: Dimensions.sizeHeightPercent(31.86),
              right: Dimensions.sizeWidthPercent(3.33),
              child: Container(
                height: Dimensions.sizeHeightPercent(18.14),
                width: Dimensions.sizeWidthPercent(75.58),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryBlack.withOpacity(0.5),
                      offset: const Offset(0, 0),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(Dimensions.sizeWidthPercent(9.18)),
                  color: AppColors.primaryWhite,
                ),
                child: Center(
                  child: AppText(
                    text: 'Coming soon',
                    size: 9.07,
                    color: AppColors.primaryBlack,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
