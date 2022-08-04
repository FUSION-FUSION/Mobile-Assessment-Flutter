import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Dimensions.sizeHeightPercent(143),
          width: Dimensions.sizeWidthPercent(186),
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        SizedBox(width: Dimensions.sizeWidthPercent(16)),
        Container(
          height: Dimensions.sizeHeightPercent(143),
          width: Dimensions.sizeWidthPercent(186),
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ],
    );
  }
}
