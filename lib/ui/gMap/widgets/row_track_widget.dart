import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/track_circle.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';


class RowTrackWidget extends StatelessWidget {
  const RowTrackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.primaryGreen,
      ),
      child: Padding(
        padding:  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("pickup",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0),),
                  Text("Jibowo Terminal",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                  Text("Abuja Terminal",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                  Text("collected",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  const RowTrackCircleWidget(),
                  Container(height:3.0, color: Colors.white,width: 95.0,),
                  const RowTrackCircleWidget(),
                  const DottedLine(dashColor: Colors.white,lineLength: 95.0,),
                  const RowTrackCircleWidget(),
                  const DottedLine(dashColor: Colors.white,lineLength: 95.0,),
                  const RowTrackCircleWidget(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("04 Mar, 2022",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0),),
                  Text("05 Mar, 2022",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}