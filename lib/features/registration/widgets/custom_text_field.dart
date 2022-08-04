import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class CustomTextfield extends StatelessWidget {
  final String label;
  const CustomTextfield({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const YMargin(ksmallspace),
        Container(
          width: context.width,
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: ksmallspace),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ksmallradius),
            color: AppColor.fieldwhite,
          ),
          alignment: Alignment.center,
          child: TextFormField(
            decoration: const InputDecoration.collapsed(hintText: ''),
          ),
        ),
      ],
    );
  }
}
