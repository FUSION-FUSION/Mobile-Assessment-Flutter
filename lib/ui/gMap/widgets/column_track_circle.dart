import 'package:flutter/material.dart';

import '../../_shared/utils/app_colors.dart';


class ColumnTrackCircle extends StatelessWidget {
  const ColumnTrackCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 10,
      backgroundColor: AppColors.primaryGreen,
    );
  }
}
