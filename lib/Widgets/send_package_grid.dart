import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';

class SendPackageGrid extends StatelessWidget {
  final String title;
  final String description;
  final String mainImage;
  final String bgImage;
  final String topSectionImage;
  final Function onTap;
  final double opacity;
  const SendPackageGrid({
    Key? key,
    required this.title,
    required this.description,
    required this.mainImage,
    required this.topSectionImage,
    required this.onTap,
    required this.bgImage,
    required this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (() => onTap()),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Opacity(
              opacity: opacity,
              child: Container(
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                ),
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -100),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(topSectionImage),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.6,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 20,
                            height: 4,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              description,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            opacity != 0.5
                ? Transform.translate(
                    offset: const Offset(0, 70),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(bgImage),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            opacity != 0.5
                ? Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Transform.translate(
                          offset: const Offset(-10, 80),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(mainImage),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Transform.translate(
                        offset: const Offset(10, 100),
                        child: const CircleAvatar(
                          radius: 11,
                          backgroundColor: kWhiteColor,
                          child: Icon(
                            Icons.arrow_forward,
                            color: kBlackColor,
                            size: 12,
                          ),
                        ),
                      )),
                    ],
                  )
                : Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(-10, 80),
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                opacity: opacity,
                                image: AssetImage(
                                  mainImage,
                                ),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 5,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kWhiteColor,
                              boxShadow: [
                                BoxShadow(blurRadius: 3, color: kGreyColor)
                              ]),
                          child: const Text(
                            'Coming soon',
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
