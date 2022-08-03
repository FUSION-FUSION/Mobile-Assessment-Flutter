import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';

class RegisterField extends StatelessWidget {
  String name;
   RegisterField({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: name,
          size: 16,
          color: AppColors.primaryBlack,
        ),
        SizedBox(height: Dimensions.sizeHeightPercent(6)),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: AppColors.primaryWhite,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(
                  color: Colors.grey[100]!,
                  width: Dimensions.sizeWidthPercent(1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(
                  color: Colors.grey[100]!,
                  width: Dimensions.sizeWidthPercent(1)),
            ),
          ),
        ),
      ],
    );
  }
}
