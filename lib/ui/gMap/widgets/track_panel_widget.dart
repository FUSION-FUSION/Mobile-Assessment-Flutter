import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/row_track_widget.dart';
import '../../_shared/utils/text_styles.dart';
import 'column_track_widget.dart';


class TrackPanelWidget extends StatelessWidget {
  final ScrollController controller;
  TrackPanelWidget({Key? key,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40.0,), topLeft:  Radius.circular(40.0))
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(height: 3.0,
                width: 50.0,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height:5.0),
            RowTrackWidget(),
            const SizedBox(height: 20.0,),

            Padding(
              padding:  const EdgeInsets.only(left: 10.0),
              child: Text("Route Details",style: AppTextStyle.kSemiBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
            ),
            const ColumnTrackWidget()
          ],
        ),
      ),
    );
  }
}




