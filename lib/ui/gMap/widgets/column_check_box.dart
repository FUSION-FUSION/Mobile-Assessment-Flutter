import 'package:flutter/material.dart';

import '../../_shared/utils/app_colors.dart';


class ColumnCheckBox extends StatelessWidget {
  const ColumnCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: true,
      onChanged: (bool? value){},
      fillColor: MaterialStateProperty.all(Colors.white),
      checkColor: AppColors.primaryGreen,
      activeColor: AppColors.primaryGreen,
      focusColor: AppColors.primaryGreen,
    );
  }
}