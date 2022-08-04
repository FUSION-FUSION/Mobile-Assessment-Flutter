import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class ActionsTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  const ActionsTile(
      {Key? key, required this.title, required this.description, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 242,
      width: (context.width * 0.5) - (kmediumspace),
      padding: const EdgeInsets.only(top: kmediumspace),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(ktinyradius),
        image: const DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/gridboxes.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: ksmallspace),
            child: Text(
              'International',
              style: TextStyle(
                  color: AppColor.basetext,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          const YMargin(ksmallspace),
          Container(
            height: 3,
            width: 18,
            margin: const EdgeInsets.only(left: ksmallspace),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ktinyspace),
              color: AppColor.primary,
            ),
          ),
          const YMargin(ksmallspace),
          const Padding(
            padding: EdgeInsets.only(left: ksmallspace),
            child: Text(
              'Send packages to other countries',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 23,
                width: 23,
                margin: const EdgeInsets.only(
                    right: ksmallspace, bottom: ksmallspace),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.flatbutton,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.arrow_forward,
                  size: 13,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
