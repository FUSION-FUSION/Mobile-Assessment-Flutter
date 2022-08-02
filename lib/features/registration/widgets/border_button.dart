import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';

class BorderButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color? foregroundColor;
  final Color labelColor;
  final VoidCallback onTap;
  const BorderButton({
    Key? key,
    required this.label,
    this.backgroundColor = AppColor.primary,
    required this.onTap,
    this.labelColor = AppColor.white,
    this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 63,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          foregroundColor: MaterialStateProperty.all<Color?>(foregroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ksmallradius),
              side: BorderSide(color: foregroundColor ?? Colors.transparent),
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
