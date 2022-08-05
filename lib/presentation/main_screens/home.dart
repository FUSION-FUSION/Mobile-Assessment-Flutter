import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mobile_assessment_flutter/presentation/resources/asset_path.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/app_textfield.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/forward_navigation.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/styles.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formatCurrency =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');

  void currency() {
    Locale locale = Localizations.localeOf(context);
    var format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    print("CURRENCY SYMBOL ${format.currencySymbol}"); // $
    print("CURRENCY NAME ${format.currencyName}"); // USD
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false, bottom: false,
        child: Scaffold(backgroundColor: const Color(0xffF8F8FA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 61.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AssetsPath.hamburgerMenu),
                  Text(
                    "Hello, John",
                    style: getSemiBoldStyle(
                        color: ColorManager.black900, fontSize: FontSize.s24),
                  ),
                  SvgPicture.asset(AssetsPath.notification)
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              ListTile(tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0)),
                title: Text(
                  "Total Balance",
                  style: getRegularStyle(
                      color: ColorManager.black400, fontSize: FontSize.s15),
                ),
                subtitle: Text("N50,000",
                    style: getSemiBoldStyle(
                        color: ColorManager.black900, fontSize: FontSize.s24)),
                trailing: Stack(
                  children: [
                    Image.asset(AssetsPath.masks),
                    Positioned(
                        right: 15,
                        bottom: 10,
                        child: GestureDetector(
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 11),
                              width: 94,
                              height: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: ColorManager.teal,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Top up",
                                    style: getMediumStyle(
                                        color: ColorManager.white,
                                        fontSize: FontSize.s12),
                                  ),
                                  const Icon(
                                    Icons.double_arrow_rounded,
                                    size: 16,
                                    color: ColorManager.white,
                                  )
                                ],
                              )),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 388,
                height: 136,
                padding: const EdgeInsets.only(left: 39, right: 26, top: 23),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26.0),
                  border: Border.all(color: ColorManager.white),
                ),
                child: Column(
                  children: [
                    Text(
                      "Track your waybill",
                      style: getSemiBoldStyle(
                          color: ColorManager.black900, fontSize: FontSize.s20),
                    ),
                    AppTextField(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                          borderSide:
                              const BorderSide(color: ColorManager.teal)),
                      filled: false,
                      prefixIcon: SvgPicture.asset(
                        AssetsPath.searchIcon,
                        fit: BoxFit.scaleDown,
                        width: 3,
                        height: 3,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(Routes.mapRoute);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                          width: 81,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            color: ColorManager.teal,
                          ),
                          child: Center(
                            child: Text(
                              "Track",
                              style: getMediumStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s12),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Send a Package",
                style: Theme.of(context).textTheme.headline3,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                children: [
                  activeDashboardItem(
                      "Same State",
                      "Deliveries within the same state",
                      AssetsPath.bikeRoad,
                      AssetsPath.bike,
                      0),
                  activeDashboardItem(
                      "Interstate",
                      "Deliveries outside your current state",
                      AssetsPath.road2,
                      AssetsPath.deliveryVan,
                      1),
                  activeDashboardItem("Charter", "Request a vehicle",
                      AssetsPath.road2, AssetsPath.truck, 1),
                  disabledDashboardItem(
                      "International",
                      "Send packages to other countries",
                      AssetsPath.airplane,
                      4)
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                "Other Actions",
                style: Theme.of(context).textTheme.headline3,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                children: [
                  otherActions(
                      "Waybill History", "Records of all your waybills."),
                  otherActions("Get Help", "Get help & support from our team")
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget otherActions(String header, String description) {
    return SizedBox(
      height: 186,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.0),
            side: const BorderSide(color: ColorManager.white)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 26,
              ),
              Text(
                header,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                width: 18,
                child: Divider(
                  thickness: 2,
                  color: ColorManager.teal,
                ),
              ),
              Text(
                description,
                style: getLightStyle(
                    color: ColorManager.black400, fontSize: FontSize.s15),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ForwardNavigation(
                  radius: 12,
                  iconSize: 12,
                  onTap: () {},
                  iconColor: ColorManager.white,
                  backgroundColor: ColorManager.black900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget activeDashboardItem(String header, String description, String road,
      String deliveryMethod, int index) {
    return SizedBox(
      width: 186,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.0),
            side: const BorderSide(color: ColorManager.white)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index == 1 || index == 2
                ? Image.asset(AssetsPath.vectorImage)
                : Container(),
            index == 1 || index == 2
                ? const SizedBox(
                    height: 18,
                  )
                : const SizedBox(
                    height: 32,
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                header,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(
              width: 18,
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Divider(thickness: 2, color: ColorManager.teal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(description,
                  style: getLightStyle(
                      color: ColorManager.black400, fontSize: FontSize.s15)),
            ),
            Stack(
              children: [
                Image.asset(
                  road,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  deliveryMethod,
                  height: 100,
                  // fit: BoxFit.contain,
                ),
                Positioned(
                    left: 140,
                    top: 55,
                    child: ForwardNavigation(
                      iconSize: 9,
                      onTap: () {},
                      backgroundColor: ColorManager.white,
                      radius: 12,
                      iconColor: ColorManager.black900,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget disabledDashboardItem(
      String header, String description, String deliveryMethod, int index) {
    return SizedBox(
      width: 186,
      child: Card(color: ColorManager.disableCardColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.0),
            side: const BorderSide(color: ColorManager.white)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(header,
                style: getSemiBoldStyle(color: ColorManager.disableTextColor,),
              ),
            ),
            const SizedBox(width: 18,
              child: Padding(padding: EdgeInsets.only(left: 7),
                child: Divider(thickness: 2, color: ColorManager.teal,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(description, style: getLightStyle(color: ColorManager.disableTextColor, fontSize: FontSize.s15),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  deliveryMethod,
                  height: 100,
                ),
                Positioned(
                    top: 60,
                    left: 30,
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        //width: 75,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          color: ColorManager.white,
                        ),
                        child: Text(
                          "Coming Soon",
                          style: getMediumStyle(
                              color: ColorManager.black900,
                              fontSize: FontSize.s9),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
