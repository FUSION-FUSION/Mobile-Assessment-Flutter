import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';

class UserTypeTile extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  const UserTypeTile({Key? key, required this.onTap, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width,
        height: 140,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(kborderradius),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 39, fontWeight: FontWeight.w700, color: AppColor.white),
        ),
      ),
    );
  }
}
