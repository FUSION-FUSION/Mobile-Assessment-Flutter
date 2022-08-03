import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';

class UserTypeButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const UserTypeButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 45.0),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.blockSizeHorizontal! * 8.3,
              letterSpacing: 1.0,
              color: kWhiteColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
