import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:dotted_line/dotted_line.dart';
import '../../core/constants.dart';

class WayBillTrackingScreen extends StatefulWidget {
  const WayBillTrackingScreen({Key? key}) : super(key: key);

  @override
  State<WayBillTrackingScreen> createState() => _WayBillTrackingScreenState();
}

class _WayBillTrackingScreenState extends State<WayBillTrackingScreen> {
  late GoogleMapController mapController;
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
  bool _ischecked4 = false;

  GlobalKey<ExpandableBottomSheetState> _key = GlobalKey();
  var contracted = ExpansionStatus.contracted;

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(17)),
              child: Row(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(44),
                    width: getProportionateScreenWidth(50),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        child: Icon(
                          Icons.arrow_back,
                          size: getProportionateScreenWidth(16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(21),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(37),
                    width: getProportionateScreenWidth(288),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                        child: Center(
                          child: Text(
                            'HH-INT-D9FD00-JBW-ORI',
                            style: TextStyle(
                                color: Palette.headerTextColor,
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.medium),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ExpandableBottomSheet(
        key: _key,
        animationCurveExpand: Curves.easeInSine,
        background: GoogleMap(
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition: CameraPosition(
            target:  LatLng(6.6018, 3.3515), 
            zoom: 11),
        ),
        expandableContent: Container(
            height: getProportionateScreenHeight(565.03),
            width: getProportionateScreenWidth(double.infinity),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(35.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Route Details',
                    style: TextStyle(
                        color: Palette.blackColor,
                        fontSize: getProportionateScreenWidth(20),
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.medium),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(16),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(17)),
                        child: Column(
                          children: [
                            RouteTrackContainer(
                                fill: Palette.primaryColor,
                                hover: Palette.hoverColor),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getProportionateScreenHeight(50),
                              dashColor: Palette.dashActiveColor,
                            ),
                            RouteTrackContainer(
                                fill: Palette.primaryColor,
                                hover: Palette.hoverColor),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getProportionateScreenHeight(50),
                              dashColor: Palette.dashActiveColor,
                            ),
                            RouteTrackContainer(
                                fill: Palette.pendingColor,
                                hover: Colors.white),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getProportionateScreenHeight(50),
                              dashColor: Palette.pendingColor,
                            ),
                            RouteTrackContainer(
                                fill: Palette.pendingColor,
                                hover: Colors.white),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(15)),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Delivered Successfully',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.regular),
                              ),
                              subtitle: Text(
                                'Bishop’s Court, Owerri.',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: FontFamily.light),
                              ),
                              trailing: Checkbox(
                                value: _ischecked1,
                                onChanged: (value) {
                                  setState(() {
                                    _ischecked1 = value!;
                                  });
                                },
                                checkColor: Palette.primaryColor,
                                focusColor: Palette.primaryColor,
                                activeColor: Colors.white,
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return BorderSide(
                                        color: Palette.primaryColor);
                                  } else {
                                    return BorderSide(color: Color(0xff666767));
                                  }
                                }),
                              ),
                            ),
                            trackListTle(),
                            ListTile(
                              title: Text(
                                'Delivered Successfully',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.regular),
                              ),
                              subtitle: Text(
                                'Bishop’s Court, Owerri.',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: FontFamily.light),
                              ),
                              trailing: Checkbox(
                                value: _ischecked3,
                                onChanged: (value) {
                                  _ischecked3 = value!;
                                },
                                checkColor: Palette.primaryColor,
                                focusColor: Palette.primaryColor,
                                activeColor: Colors.white,
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return BorderSide(
                                        color: Palette.primaryColor);
                                  } else {
                                    return BorderSide(color: Color(0xff666767));
                                  }
                                }),
                              ),
                            ),
                            ListTile(
                                title: Text(
                                  'Delivered Successfully',
                                  style: TextStyle(
                                      color: Palette.blackColor,
                                      fontSize: getProportionateScreenWidth(16),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.regular),
                                ),
                                subtitle: Text(
                                  'Bishop’s Court, Owerri.',
                                  style: TextStyle(
                                      color: Palette.blackColor,
                                      fontSize: getProportionateScreenWidth(14),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: FontFamily.light),
                                ),
                                trailing: Checkbox(
                                  value: _ischecked4,
                                  onChanged: (value) {
                                    _ischecked4 = value!;
                                  },
                                  checkColor: Palette.primaryColor,
                                  focusColor: Palette.primaryColor,
                                  activeColor: Colors.white,
                                  side: MaterialStateBorderSide.resolveWith(
                                      (states) {
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return BorderSide(
                                          color: Palette.primaryColor);
                                    } else {
                                      return BorderSide(
                                          color: Color(0xff666767));
                                    }
                                  }),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        persistentHeader: GestureDetector(
          onTap: () {
            _key.currentState!.expand();
          },
          child: Container(
              height: getProportionateScreenHeight(229),
              width: getProportionateScreenWidth(double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(24),
                    left: getProportionateScreenWidth(13),
                    right: getProportionateScreenWidth(14)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(176)),
                          child: SizedBox(
                              width: getProportionateScreenWidth(50),
                              child: Divider(
                                color: Color(0xffBFBFBF),
                                thickness: 4,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(131)),
                          child: Transform.rotate(
                            angle: 1.55,
                            child: Icon(
                              Icons.code,
                              color: Color(0xff818080),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(34.97)),
                    Container(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(15.21),
                          top: getProportionateScreenHeight(21.73),
                          right: getProportionateScreenWidth(9.76)),
                      height: getProportionateScreenHeight(126.06),
                      decoration: BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.circular(21.73)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pickup',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.medium),
                              ),
                              Text(
                                'Jibowo Terminal',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.medium),
                              ),
                              Text(
                                'Abuja Terminal',
                                style: TextStyle(
                                    color: Palette.pendingTextColor,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.medium),
                              ),
                              Text(
                                'Collected',
                                style: TextStyle(
                                    color: Palette.pendingTextColor,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.medium),
                              )
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(9.17)),
                          Row(
                            children: [
                              Container(
                                height: getProportionateScreenHeight(12.7),
                                width: getProportionateScreenWidth(12.7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(106.84),
                                child: Divider(
                                  color: Colors.white,
                                  thickness: 2.54,
                                ),
                              ),
                              Container(
                                height: getProportionateScreenHeight(12.7),
                                width: getProportionateScreenWidth(12.7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                dashColor: Palette.pendingTextColor,
                                lineLength: getProportionateScreenWidth(110.45),
                              ),
                              Container(
                                height: getProportionateScreenHeight(12.7),
                                width: getProportionateScreenWidth(12.7),
                                decoration: BoxDecoration(
                                    color: Palette.pendingTextColor,
                                    shape: BoxShape.circle),
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                dashColor: Palette.pendingTextColor,
                                lineLength: getProportionateScreenWidth(103.58),
                              ),
                              Container(
                                height: getProportionateScreenHeight(12.7),
                                width: getProportionateScreenWidth(12.7),
                                decoration: BoxDecoration(
                                    color: Palette.pendingTextColor,
                                    shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(28.6)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '04 Mar, 2022',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontFamily: FontFamily.regular),
                              ),
                              Text(
                                '05 Mar, 2022',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize:
                                        getProportionateScreenWidth(11.95),
                                    fontFamily: FontFamily.regular),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  ListTile trackListTle() {
    return ListTile(
                              title: Text(
                                'Delivered Successfully',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: FontFamily.regular),
                              ),
                              subtitle: Text(
                                'Bishop’s Court, Owerri.',
                                style: TextStyle(
                                    color: Palette.blackColor,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: FontFamily.light),
                              ),
                              trailing: Checkbox(
                                value: _ischecked2,
                                onChanged: (value) {
                                  setState(() {
                                    _ischecked2 = value!;
                                  });
                                },
                                checkColor: Palette.primaryColor,
                                focusColor: Palette.primaryColor,
                                activeColor: Colors.white,
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) {
                                  if (states
                                      .contains(MaterialState.selected)) {
                                    return BorderSide(
                                        color: Palette.primaryColor);
                                  } else {
                                    return BorderSide(
                                        color: Color(0xff666767));
                                  }
                                }),
                              ));
  }
}
