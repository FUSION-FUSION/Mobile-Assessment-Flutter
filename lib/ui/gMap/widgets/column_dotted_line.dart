import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../_shared/utils/app_colors.dart';



class ColumnDottedLines extends StatelessWidget {
  const ColumnDottedLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const DottedLine(
      direction: Axis.vertical,
      dashColor: AppColors.primaryGreen,
      lineLength: 50.0,
    );
  }
}