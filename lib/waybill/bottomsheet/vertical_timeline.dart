import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:timelines/timelines.dart';

class VerticalTimeline extends StatelessWidget {
  const VerticalTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
            text: 'Route Details',
            size: 20,
            color: AppColors.primaryBlack,
            bold: true),
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: ListTile(
            title: Text(
              'Delivered Sucessfully',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.sizeHeightPercent(16),
                  color: AppColors.primaryBlack,
                ),
              ),
            ),
            subtitle: AppText(text: 'Bishop’s Court, Owerri.', size: 14),
            trailing: Icon(
              Icons.check_box_outlined,
              color: AppColors.primaryBlue,
              size: Dimensions.sizeHeightPercent(24),
            ),
          ),
          node: TimelineNode(
            indicator: OutlinedDotIndicator(
              backgroundColor: AppColors.darkerBlue,
              borderWidth: Dimensions.sizeWidthPercent(4),
              color: AppColors.primaryBlue,
              size: Dimensions.sizeHeightPercent(19),
            ),
            endConnector: DashedLineConnector(
              color: AppColors.lighterBlue,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 0.5,
            ),
          ),
        ),
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: ListTile(
            title: Text(
              'Delivered Sucessfully',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.sizeHeightPercent(16),
                  color: AppColors.primaryBlack,
                ),
              ),
            ),
            subtitle: AppText(text: 'Bishop’s Court, Owerri.', size: 14),
            trailing: Icon(
              Icons.check_box_outlined,
              color: AppColors.primaryBlue,
              size: Dimensions.sizeHeightPercent(24),
            ),
          ),
          node: TimelineNode(
            overlap: true,
            indicator: OutlinedDotIndicator(
              borderWidth: Dimensions.sizeWidthPercent(4),
              color: AppColors.primaryBlue,
              size: Dimensions.sizeHeightPercent(19),
              backgroundColor: AppColors.darkerBlue,
            ),
            startConnector: DashedLineConnector(
              color: AppColors.lighterBlue,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 2,
            ),
            endConnector: DashedLineConnector(
              color: AppColors.lighterBlue,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 0.5,
            ),
          ),
        ),
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: ListTile(
            title: Text(
              'Delivered Sucessfully',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.sizeHeightPercent(16),
                  color: AppColors.primaryBlack,
                ),
              ),
            ),
            subtitle: AppText(text: 'Bishop’s Court, Owerri.', size: 14),
            trailing: Icon(
              Icons.check_box_outline_blank_rounded,
              color: AppColors.emptyCheck,
              size: Dimensions.sizeHeightPercent(24),
            ),
          ),
          node: TimelineNode(
            indicator: OutlinedDotIndicator(
              color: AppColors.circleColor,
              size: Dimensions.sizeHeightPercent(19),
              borderWidth: Dimensions.sizeWidthPercent(4),
            ),
            startConnector: DashedLineConnector(
              color: AppColors.lighterBlue,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 2,
            ),
            endConnector: DashedLineConnector(
              color: AppColors.circleColor,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 0.5,
            ),
          ),
        ),
        TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: ListTile(
            title: Text(
              'Delivered Sucessfully',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.sizeHeightPercent(16),
                  color: AppColors.primaryBlack,
                ),
              ),
            ),
            subtitle: AppText(text: 'Bishop’s Court, Owerri.', size: 14),
            trailing: Icon(
              Icons.check_box_outline_blank_rounded,
              color: AppColors.emptyCheck,
              size: Dimensions.sizeHeightPercent(24),
            ),
          ),
          node: TimelineNode(
            indicator: OutlinedDotIndicator(
              color: AppColors.circleColor,
              size: Dimensions.sizeHeightPercent(19),
              borderWidth: Dimensions.sizeWidthPercent(4),
            ),
            startConnector: DashedLineConnector(
              color: AppColors.circleColor,
              thickness: Dimensions.sizeWidthPercent(2),
              dash: 5,
              gapColor: AppColors.primaryWhite,
              gap: 2,
            ),
          ),
        )
      ],
    );
  }
}
