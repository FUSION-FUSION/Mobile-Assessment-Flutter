import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class ComingsoonTile extends StatelessWidget {
  final VoidCallback? onTap;
  const ComingsoonTile({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ktinyradius),
      child: Stack(
        children: [
          Container(
            height: 242,
            width: (context.width * 0.5) - (kmediumspace),
            padding: const EdgeInsets.only(top: kmediumspace),
            decoration: const BoxDecoration(
              color: AppColor.white,
              image: DecorationImage(
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
                const YMargin(ksmallspace),
                Image.asset(
                  'assets/images/ic-aeroplane.png',
                  height: 104,
                  width: 114,
                ),
              ],
            ),
          ),
          Container(
            height: 242,
            width: (context.width * 0.5) - (kmediumspace),
            decoration: BoxDecoration(color: AppColor.white.withOpacity(0.7)),
          ),
          Positioned(
            bottom: kmediumspace,
            right: ksmallspace,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: ksmallspace, vertical: ktinyspace),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Coming Soon',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 9),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
