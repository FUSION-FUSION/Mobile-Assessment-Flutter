import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/routes/app_route.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/dashboard/widgets/actions_tile.dart';
import 'package:mobile_assessment_flutter/features/dashboard/widgets/comingsoon_tile.dart';
import 'package:mobile_assessment_flutter/features/dashboard/widgets/interstate_charter_tile.dart';
import 'package:mobile_assessment_flutter/features/dashboard/widgets/same_state_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bottomlinear,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: kspace),
          child: SvgPicture.asset('assets/svg/Hamburger-menu.svg'),
        ),
        leadingWidth: 24 + kspace,
        centerTitle: true,
        title: const Text(
          'Hello, John.',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: AppColor.basetext),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: kspace),
            child: SvgPicture.asset('assets/svg/notification-new.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kspace),
        child: ListView(
          padding: const EdgeInsets.only(bottom: kspace),
          children: [
            //balance component
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 80,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(kmediumradius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, -1),
                        blurRadius: 3,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                ),
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kmediumradius),
                    child: Image.asset(
                      'assets/images/bg-dashboard-balance.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: ksmallspace,
                  left: kspace,
                  child: Column(
                    children: [
                      const Text(
                        'Total Balance',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '  ${context.currencysymbol} 50,000',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: kspace,
                  bottom: (40 - 17),
                  child: Container(
                    width: 94,
                    height: 34,
                    decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(kborderradius)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Top up ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: AppColor.white),
                        ),
                        Icon(
                          Icons.double_arrow,
                          size: 12,
                          color: AppColor.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const YMargin(kmediumspace),
            //track waybill component
            Container(
              height: 136,
              width: context.width,
              padding: const EdgeInsets.all(kspace),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(kborderradius),
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
              child: Column(
                children: [
                  const Text(
                    'Track your waybill',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColor.basetext),
                  ),
                  const YMargin(ksmallspace),
                  Container(
                    height: 44,
                    width: context.width,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(ksmallradius),
                        border: Border.all(color: AppColor.primary)),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: ksmallspace),
                          child: SvgPicture.asset('assets/svg/search-icon.svg'),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: 'Waybill Number',
                                hintStyle: TextStyle(fontSize: 15)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoute.trackingroute);
                          },
                          child: Container(
                            height: 38,
                            width: 81,
                            margin: const EdgeInsets.only(
                                left: ksmallradius, right: 2),
                            decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(14)),
                            alignment: Alignment.center,
                            child: const Text(
                              'Track',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const YMargin(kmediumspace),
            const Text(
              'Send a Package',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const YMargin(kspace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SameStateTile(),
                InterstateCharterTile(
                  title: 'Interstate',
                  description: 'Deliveries outside your current state',
                  mobilityimagepath: 'assets/images/Delivery-van.png',
                ),
              ],
            ),
            const YMargin(kmediumspace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InterstateCharterTile(
                  title: 'Charter',
                  description: 'Request a vehichle',
                  mobilityimagepath: 'assets/images/ic-truck.png',
                ),
                ComingsoonTile(),
              ],
            ),
            const YMargin(kmediumspace),
            const Text(
              'Other Actions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const YMargin(kspace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ActionsTile(
                  title: 'Waybill History',
                  description: 'Records of all your waybills.',
                ),
                ActionsTile(
                    title: 'Get Help',
                    description: 'Get help & support from our team'),
              ],
            ),
            const YMargin(ktoppadding),
          ],
        ),
      ),
    );
  }
}
