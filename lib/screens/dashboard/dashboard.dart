import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/balance_container.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/other_actions.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/package_grid.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/tracking_container.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';

import '../../utils/dimensions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8FA),
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.sizeWidthPercent(20),
          right: Dimensions.sizeWidthPercent(20),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: Dimensions.sizeHeightPercent(57),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Dimensions.sizeHeightPercent(2.5),
                      width: Dimensions.sizeWidthPercent(12.5),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBlack,
                        borderRadius: BorderRadius.circular(
                            Dimensions.sizeWidthPercent(7)),
                      ),
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                    Container(
                      height: Dimensions.sizeHeightPercent(2.5),
                      width: Dimensions.sizeWidthPercent(24),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBlack,
                        borderRadius: BorderRadius.circular(
                            Dimensions.sizeWidthPercent(7)),
                      ),
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                    Container(
                      height: Dimensions.sizeHeightPercent(2.5),
                      width: Dimensions.sizeWidthPercent(20),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBlack,
                        borderRadius: BorderRadius.circular(
                            Dimensions.sizeWidthPercent(7)),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Hello, John.',
                  style: GoogleFonts.poppins(
                    fontSize: Dimensions.sizeHeightPercent(24),
                    color: AppColors.primaryBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: Dimensions.sizeHeightPercent(29),
                  width: Dimensions.sizeWidthPercent(29),
                  child: Image.asset(
                    'assets/images/ic-notification.png',
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.sizeHeightPercent(30)),
            const BalanceContainer(),
            SizedBox(height: Dimensions.sizeHeightPercent(30)),
            const TrackingContainer(),
            SizedBox(height: Dimensions.sizeHeightPercent(30)),
            AppText(
              text: 'Send a Package',
              size: 24,
              bold: true,
              color: AppColors.primaryBlack,
            ),
            SizedBox(height: Dimensions.sizeHeightPercent(13)),
            const PackageGrid(),
            SizedBox(height: Dimensions.sizeHeightPercent(30)),
            AppText(
              text: 'Other Actions',
              size: 24,
              bold: true,
              color: AppColors.primaryBlack,
            ),
            SizedBox(
              height: Dimensions.sizeHeightPercent(7),
            ),
            const OtherActions(),
            SizedBox(
              height: Dimensions.sizeHeightPercent(165),
            ),
          ],
        ),
      ),
    );
  }
}
