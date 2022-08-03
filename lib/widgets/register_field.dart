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
        Container(
          width: Dimensions.sizeWidthPercent(390),
          height: Dimensions.sizeHeightPercent(44),
          padding: EdgeInsets.only(
            left: Dimensions.sizeWidthPercent(12),
            right: Dimensions.sizeWidthPercent(12),
            top: Dimensions.sizeHeightPercent(6),
            bottom: Dimensions.sizeHeightPercent(6),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFDFEFF),
          ),
          child: TextFormField(
              decoration: const InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ],
    );
  }
}
