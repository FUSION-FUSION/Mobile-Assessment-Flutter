import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';

import '../util/constants/strings.dart';

class SendPackageWidget extends StatelessWidget {
  SendPackageWidget({Key? key}) : super(key: key);
  final number = (List.generate(100, (index) => "$index"));

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: size.height * .3,
                width: size.width * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("$imageDir/ic-road-same-state.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "  Same State",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Text(
                        "  Deliveries within the \n  same state",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "$imageDir/ic-bike.png",
                            scale: 4.4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(0, size.height * .03),
                                shape: const CircleBorder(),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: size.height * .3,
                width: size.width * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("$imageDir/ic-road-interstate.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        "$imageDir/ic-curve.png",
                        scale: 4,
                      ),
                    ),
                    const Text(
                      " Interstate ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 3,
                      width: 20,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const Text(
                      " Deliveries outside\n  your current state",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "$imageDir/Delivery-Van.png",
                          scale: 4.4,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(0, size.height * .03),
                              shape: const CircleBorder(),
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: size.height * .3,
                width: size.width * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("$imageDir/ic-road-charter.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        "$imageDir/ic-curve.png",
                        scale: 4,
                      ),
                    ),
                    const Text(
                      " Charter ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 3,
                      width: 20,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                      child: const Text(
                        " Request a vehicle",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "$imageDir/ic-truck.png",
                          scale: 4.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(0, size.height * .03),
                              shape: const CircleBorder(),
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: size.height * .3,
                width: size.width * .5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                  // image: const DecorationImage(
                  //     image: AssetImage("$imageDir/ic-aeroplane.png"),
                  //     fit: BoxFit.contain,
                  //     alignment: Alignment.bottomLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        "  International",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade500),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                       Text(
                        "  Send packages to\n  other countries",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500),
                      ),

                      Container(
                        height: 130,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),

                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 4,
                                bottom: 0,
                                left: 0,
                                right: 40,
                                child: Image.asset(
                                  'assets/images/ic-aeroplane.png',
                                )),
                            Container(
                              color: Colors.grey.shade100.withOpacity(0.4),
                            ),
                            Positioned(
                              top: 65,
                              bottom: 0,
                              right: 10,
                              child: TextButton(
                                onPressed: () {  },
                                child: Text(
                                        "coming soon",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10,backgroundColor: Colors.white.withOpacity(0.8)),
                                      )),

                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
