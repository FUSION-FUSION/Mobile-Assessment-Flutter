import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/models/delivery.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/waybill/widgets/route_detail_tile.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/map-background.png'),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: ktoppadding, left: kspace),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 44,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(ksmallradius),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, -2),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const XMargin(ksmallspace),
                    Container(
                      height: 37,
                      padding: const EdgeInsets.fromLTRB(
                          kmediumspace, ksmallspace, kmediumspace, ksmallspace),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(ktinyradius),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, -2),
                            blurRadius: 4,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'HH-INT-D9FD00-JBW-ORI',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: DraggableScrollableSheet(
                    minChildSize: 0.30,
                    initialChildSize: 0.70,
                    builder: (context, scrollController) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(horizontal: kspace),
                        decoration: const BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(kLargespace),
                                topRight: Radius.circular(kLargespace))),
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior(),
                          child: ListView(
                            controller: scrollController,
                            padding: const EdgeInsets.only(top: kmediumspace),
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Spacer(),
                                  Container(
                                    height: 5,
                                    width: 50,
                                    margin: const EdgeInsets.only(left: 11),
                                    decoration: BoxDecoration(
                                        color: const Color(0XFFBFBFBF),
                                        borderRadius:
                                            BorderRadius.circular(ktinyradius)),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: ktinyspace),
                                    child: SvgPicture.asset(
                                        'assets/svg/sheet-arrow.svg'),
                                  )
                                ],
                              ),
                              const YMargin(kLargespace),
                              //pickup/dropoff detail
                              Container(
                                height: 126,
                                width: context.width,
                                padding: const EdgeInsets.fromLTRB(
                                    ksmallspace, kspace, ksmallspace, kspace),
                                decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius:
                                      BorderRadius.circular(kmediumradius),
                                ),
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    //location stepper
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Pickup',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const YMargin(ktinyspace),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: AppColor.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  ...List.generate(
                                                    150,
                                                    ((index) => Expanded(
                                                          child: Container(
                                                            width: 2,
                                                            height: 2,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 2),
                                                            color:
                                                                AppColor.white,
                                                          ),
                                                        )),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Jibowo',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const YMargin(ktinyspace),
                                              Row(
                                                children: [
                                                  ...List.generate(80, (index) {
                                                    return Expanded(
                                                      child: Container(
                                                        width: 2,
                                                        height: 2,
                                                        margin: const EdgeInsets
                                                            .only(bottom: 2),
                                                        decoration:
                                                            const BoxDecoration(
                                                                color: AppColor
                                                                    .white),
                                                      ),
                                                    );
                                                  }),
                                                  Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: AppColor.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  ...List.generate(
                                                    150,
                                                    ((index) => Expanded(
                                                          child: Container(
                                                            width: 2,
                                                            height: 2,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 2),
                                                            color: AppColor
                                                                .lightgrey,
                                                          ),
                                                        )),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Abuja',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.lightgrey,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const YMargin(ktinyspace),
                                              Row(
                                                children: [
                                                  ...List.generate(100,
                                                      (index) {
                                                    return Expanded(
                                                      child: Container(
                                                        width: 2,
                                                        height: 2,
                                                        margin: const EdgeInsets
                                                            .only(bottom: 2),
                                                        decoration:
                                                            const BoxDecoration(
                                                                color: AppColor
                                                                    .lightgrey),
                                                      ),
                                                    );
                                                  }),
                                                  Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: AppColor.lightgrey,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  ...List.generate(
                                                    150,
                                                    ((index) => Expanded(
                                                          child: Container(
                                                            width: 2,
                                                            height: 2,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 2),
                                                            color: AppColor
                                                                .lightgrey,
                                                          ),
                                                        )),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Collected',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: AppColor.lightgrey,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const YMargin(ktinyspace),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  ...List.generate(10, (index) {
                                                    return Expanded(
                                                      child: Container(
                                                        width: 2,
                                                        height: 2,
                                                        margin: const EdgeInsets
                                                            .only(bottom: 2),
                                                        decoration:
                                                            const BoxDecoration(
                                                                color: AppColor
                                                                    .lightgrey),
                                                      ),
                                                    );
                                                  }),
                                                  Container(
                                                    height: 12,
                                                    width: 12,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: AppColor.lightgrey,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    //pickup/dropoff time
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          DateTime.now().toDayMonthYear(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.lightgrey,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          DateTime.now()
                                              .add(const Duration(days: 1))
                                              .toDayMonthYear(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.lightgrey,
                                              fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const YMargin(kLargespace),
                              const Text(
                                'Route Details',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              const YMargin(kmediumspace),
                              Column(
                                  children:
                                      List.generate(deliveries.length, (index) {
                                return RouteDetailTile(
                                  status: deliveries[index].status,
                                  dropofflocation:
                                      deliveries[index].dropofflocation,
                                  delivered: deliveries[index].delivered,
                                  nonlastroute:
                                      !(index + 1 == deliveries.length),
                                );
                              }))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
