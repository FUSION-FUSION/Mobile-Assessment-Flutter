import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class InterstateCharterTile extends StatelessWidget {
  final String title;
  final String description;
  final String mobilityimagepath;
  final VoidCallback? onTap;
  const InterstateCharterTile(
      {Key? key,
      required this.title,
      required this.description,
      required this.mobilityimagepath,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ktinyradius),
      child: Container(
        height: 242,
        width: (context.width * 0.5) - (kmediumspace),
        padding: const EdgeInsets.only(top: kspace),
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, -2),
              blurRadius: 8,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/ic-curve.png'),
            Padding(
              padding: const EdgeInsets.only(left: ksmallspace),
              child: Text(
                title,
                style: const TextStyle(
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
            Padding(
              padding: const EdgeInsets.only(left: ksmallspace),
              child: Text(
                description,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ),
            const YMargin(ksmallspace),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/ic-road-interstate.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: -2,
                    bottom: -2,
                    child: Image.asset(
                      mobilityimagepath,
                      height: 104,
                      width: 114,
                    ),
                  ),
                  Positioned(
                    right: kspace,
                    bottom: kspace,
                    child: GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 23,
                        width: 23,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(72, 72, 72, 0.74),
                              offset: Offset(0, -2),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Color.fromRGBO(72, 72, 72, 0.74),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
