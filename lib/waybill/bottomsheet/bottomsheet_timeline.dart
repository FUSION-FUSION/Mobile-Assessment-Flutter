import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:timelines/timelines.dart';

class BottomTimeline extends StatelessWidget {
  const BottomTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.sizeHeightPercent(126),
        width: Dimensions.sizeWidthPercent(401),
        decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            borderRadius: BorderRadius.circular(21.73)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimelineTile(
              nodeAlign: TimelineNodeAlign.basic,
              direction: Axis.horizontal,
              oppositeContents: Padding(
                padding: EdgeInsets.only(
                    bottom: Dimensions.sizeHeightPercent(
                        9.17)), // This is the radius of the circle
                child: AppText(
                  text: "Pickup",
                  size: 11.95,
                  bold: true,
                  color: AppColors.primaryWhite,
                ),
              ),
              contents: Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.sizeHeightPercent(28.6),
                    left: Dimensions.sizeWidthPercent(14)),
                child: Text(
                  '04 Mar,2022',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Dimensions.sizeHeightPercent(11.95),
                      color: AppColors.primaryWhite,
                    ),
                  ),
                ),
              ),
              node: TimelineNode(
                overlap: true,
                indicator: DotIndicator(
                  color: AppColors.primaryWhite,
                  size: Dimensions.sizeHeightPercent(12.7),
                ),
                endConnector: SolidLineConnector(
                  color: AppColors.primaryWhite,
                  thickness: Dimensions.sizeHeightPercent(3),
                  direction: Axis.horizontal,
                ),
              ),
            ),
            TimelineTile(
              nodeAlign: TimelineNodeAlign.basic,
              direction: Axis.horizontal,
              oppositeContents: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.sizeWidthPercent(10),
                    bottom: Dimensions.sizeHeightPercent(
                        9.17)), // This is the radius of the circle
                child: AppText(
                  text: "Jibowo Terminal",
                  size: 11.95,
                  bold: true,
                  color: AppColors.primaryWhite,
                ),
              ),
              node: TimelineNode(
                overlap: true,
                indicator: DotIndicator(
                  color: AppColors.primaryWhite,
                  size: Dimensions.sizeHeightPercent(12.7),
                ),
                startConnector: SolidLineConnector(
                  color: AppColors.primaryWhite,
                  thickness: Dimensions.sizeHeightPercent(3),
                ),
                endConnector: DashedLineConnector(
                  color: AppColors.primaryGray,
                  thickness: Dimensions.sizeHeightPercent(3),
                  direction: Axis.horizontal,
                  gap: 2,
                ),
              ),
            ),
            TimelineTile(
              nodeAlign: TimelineNodeAlign.basic,
              direction: Axis.horizontal,
              oppositeContents: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.sizeWidthPercent(26),
                    bottom: Dimensions.sizeHeightPercent(
                        9.17)), // This is the radius of the circle
                child: AppText(
                  text: "Abuja Terminal",
                  size: 11.95,
                  bold: true,
                  color: AppColors.primaryGray,
                ),
              ),
              node: TimelineNode(
                overlap: true,
                indicator: DotIndicator(
                  color: AppColors.primaryGray,
                  size: Dimensions.sizeHeightPercent(12.7),
                ),
                startConnector: DashedLineConnector(
                  color: AppColors.primaryGray,
                  thickness: Dimensions.sizeHeightPercent(3),
                ),
                endConnector: DashedLineConnector(
                  color: AppColors.primaryGray,
                  thickness: Dimensions.sizeHeightPercent(3),
                  direction: Axis.horizontal,
                  gap: 1,
                ),
              ),
            ),
            TimelineTile(
              nodeAlign: TimelineNodeAlign.basic,
              direction: Axis.horizontal,
              oppositeContents: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.sizeWidthPercent(17.76),
                    bottom: Dimensions.sizeHeightPercent(
                        9.17)), // This is the radius of the circle
                child: AppText(
                  text: "Collected",
                  size: 11.95,
                  bold: true,
                  color: AppColors.primaryGray,
                ),
              ),
              contents: Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.sizeHeightPercent(28.6),
                    left: Dimensions.sizeWidthPercent(14)),
                child: Text(
                  '05 Mar,2022',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Dimensions.sizeHeightPercent(11.95),
                      color: AppColors.primaryGray,
                    ),
                  ),
                ),
              ),
              node: TimelineNode(
                overlap: true,
                indicator: DotIndicator(
                  color: AppColors.primaryGray,
                  size: Dimensions.sizeHeightPercent(12.7),
                ),
                startConnector: const DashedLineConnector(
                  color: AppColors.primaryGray,
                  thickness: 3,
                  gap: 1,
                ),
              ),
            )
          ],
        ));
  }
}
