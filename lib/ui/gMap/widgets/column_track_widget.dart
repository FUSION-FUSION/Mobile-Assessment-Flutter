import 'package:flutter/material.dart';

import 'column_check_box.dart';
import 'column_dotted_line.dart';
import 'column_track_circle.dart';
import 'column_track_text.dart';

class ColumnTrackWidget extends StatelessWidget {
  const ColumnTrackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            ColumnTrackCircle(),
            ColumnDottedLines(),
            ColumnTrackCircle(),
            ColumnDottedLines(),
            ColumnTrackCircle(),
            ColumnDottedLines(),
            ColumnTrackCircle(),
          ],
        ),
        const SizedBox(width: 20.0,),
        Column(
          children: const[
            ColumnTrackText(),
            SizedBox(height: 38.0,),
            ColumnTrackText(),
            SizedBox(height: 38.0,),
            ColumnTrackText(),
            SizedBox(height: 38.0,),
            ColumnTrackText(),
          ],
        ),

        const SizedBox(width: 110.0,),
        Column(
          children: const [
            ColumnCheckBox(),
            SizedBox(height: 32.0,),
            ColumnCheckBox(),
            SizedBox(height: 32.0,),
            ColumnCheckBox(),
            SizedBox(height: 32.0,),
            ColumnCheckBox(),
          ],
        )
      ],
    );
  }
}