import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/assets_constant_name.dart';
import '../../../constants/color_pallette.dart';

class PackageCard extends StatelessWidget {
  final String title, description;
  final List<String> images;
  final bool? isLight, isComingSoon, isHavingCurve;
  const PackageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.images,
    this.isLight = false,
    this.isComingSoon = false,
    this.isHavingCurve = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      height: height * 0.29,
      width: width * 0.43,
      decoration: BoxDecoration(
        color: isLight ?? false ? Colors.white : Colors.white.withOpacity(1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: kShadow
      ),
      foregroundDecoration: isLight??false ?  BoxDecoration(): BoxDecoration(
          color: Colors.white.withOpacity(0.6)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              bottom: -10,
              child: Container(
                height: width * 0.27,
                width: width * 0.44,
                child: isLight ?? false
                    ? Image.asset(
                        images[0],
                      )
                    : const Text(''),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 8,
              child: Container(
                height: width * 0.28,
                width: width * 0.28,
                child: Image.asset(images[1]),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: SizedBox(
                child: isComingSoon ?? false
                    ? Container(
                        decoration: BoxDecoration(
                          color: kSecBackground,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: kShadow
                        ),
                        width: width * 0.18,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'coming soon',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 10,
                          ),
                        ),
                      ),
              ),
            ),
            Positioned(
                top: 15,
                child: Container(
                    height: 30,
                    width: width * 0.46,
                    child: isHavingCurve ?? false
                        ? Image.asset(icCurve)
                        : const Text(''))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 20,
                    height: 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kPrimary),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(description),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
