import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/utils/constants/font_family.dart';
import 'package:mobile_assessment_flutter/utils/controller/track_controller.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/re_usable.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(7.1453088, 3.3590446);

  final controller = Get.put(TrackController());

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ExpandableBottomSheet(
        key: controller.key,
        animationCurveExpand: Curves.easeInSine,
        background: GoogleMap(
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
          ),
        ),
        expandableContent: Container(
            height: getScreenHeight(565.03),
            width: getScreenWidth(double.infinity),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: getScreenWidth(20), right: getScreenWidth(35.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Route Details',
                    style: TextStyle(
                        color: Palette.kBlackColor,
                        fontSize: getScreenWidth(20),
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.kMediumFamily),
                  ),
                  SizedBox(
                    height: getScreenHeight(16),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(top: getScreenHeight(17)),
                        child: Column(
                          children: [
                            RouteTracker(
                              fill:Palette.kPrimaryColor,
                              hover: Palette.kHoverColor
                            ),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getScreenHeight(50),
                              dashColor: Palette.kDashColor,
                            ),
                            RouteTracker(
                                fill:Palette.kPrimaryColor,
                                hover: Palette.kHoverColor
                            ),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getScreenHeight(50),
                              dashColor: Palette.kDashColor,
                            ),
                            RouteTracker(
                                fill:Palette.kPendingColor,
                                hover: Colors.white
                            ),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: getScreenHeight(50),
                              dashColor: Palette.kDashColor,
                            ),
                            RouteTracker(
                                fill:Palette.kPendingColor,
                                hover: Colors.white
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getScreenWidth(15)),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Delivered Successfully',
                                style: TextStyle(
                                  color: Palette.kBlackColor,
                                  fontSize: getScreenWidth(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontFamily.kRegularFamily
                                ),
                              ),
                              subtitle: Text(
                                'Bishop’s Court, Owerri.',
                                style: TextStyle(
                                    color: Palette.kBlackColor,
                                    fontSize: getScreenWidth(14),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: FontFamily.kLightFamily
                                ),
                              ),
                              trailing:Obx(()=>  Checkbox(
                                value: controller.checked1.value,
                                onChanged: (value){
                                  controller.checked1.value = value!;
                                },
                                checkColor: Palette.kPrimaryColor,
                                focusColor: Palette.kPrimaryColor,
                                activeColor: Colors.white,
                                side: MaterialStateBorderSide.resolveWith((states){
                                  if(states.contains(MaterialState.selected)){
                                    return BorderSide(color: Palette.kPrimaryColor);
                                  }else {
                                    return BorderSide(color: Color(0xff666767));
                                  }
                                } ),
                              ),)
                            ),
                            ListTile(
                                title: Text(
                                  'Delivered Successfully',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(16),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.kRegularFamily
                                  ),
                                ),
                                subtitle: Text(
                                  'Bishop’s Court, Owerri.',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(14),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: FontFamily.kLightFamily
                                  ),
                                ),
                                trailing:Obx(()=>  Checkbox(
                                  value: controller.checked2.value,
                                  onChanged: (value){
                                    controller.checked2.value = value!;
                                  },
                                  checkColor: Palette.kPrimaryColor,
                                  focusColor: Palette.kPrimaryColor,
                                  activeColor: Colors.white,
                                  side: MaterialStateBorderSide.resolveWith((states){
                                    if(states.contains(MaterialState.selected)){
                                      return BorderSide(color: Palette.kPrimaryColor);
                                    }else {
                                      return BorderSide(color: Color(0xff666767));
                                    }
                                  } ),
                                ),)
                            ),
                            ListTile(
                                title: Text(
                                  'Delivered Successfully',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(16),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.kRegularFamily
                                  ),
                                ),
                                subtitle: Text(
                                  'Bishop’s Court, Owerri.',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(14),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: FontFamily.kLightFamily
                                  ),
                                ),
                                trailing:Obx(()=>  Checkbox(
                                  value: controller.checked3.value,
                                  onChanged: (value){
                                    controller.checked3.value = value!;
                                  },
                                  checkColor: Palette.kPrimaryColor,
                                  focusColor: Palette.kPrimaryColor,
                                  activeColor: Colors.white,
                                  side: MaterialStateBorderSide.resolveWith((states){
                                    if(states.contains(MaterialState.selected)){
                                      return BorderSide(color: Palette.kPrimaryColor);
                                    }else {
                                      return BorderSide(color: Color(0xff666767));
                                    }
                                  } ),
                                ),)
                            ),
                            ListTile(
                                title: Text(
                                  'Delivered Successfully',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(16),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.kRegularFamily
                                  ),
                                ),
                                subtitle: Text(
                                  'Bishop’s Court, Owerri.',
                                  style: TextStyle(
                                      color: Palette.kBlackColor,
                                      fontSize: getScreenWidth(14),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: FontFamily.kLightFamily
                                  ),
                                ),
                                trailing:Obx(()=>  Checkbox(
                                  value: controller.checked4.value,
                                  onChanged: (value){
                                    controller.checked4.value = value!;
                                  },
                                  checkColor: Palette.kPrimaryColor,
                                  focusColor: Palette.kPrimaryColor,
                                  activeColor: Colors.white,
                                  side: MaterialStateBorderSide.resolveWith((states){
                                    if(states.contains(MaterialState.selected)){
                                      return BorderSide(color: Palette.kPrimaryColor);
                                    }else {
                                      return BorderSide(color: Color(0xff666767));
                                    }
                                  } ),
                                ),)
                            ),
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
            controller.key.currentState?.expand();
          },
          child: Container(
              height: getScreenHeight(229),
              width: getScreenWidth(double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: getScreenHeight(24),
                    left: getScreenWidth(13),
                    right: getScreenWidth(14)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(176)),
                          child: SizedBox(
                              width: getScreenWidth(50),
                              child: Divider(
                                color: Color(0xffBFBFBF),
                                thickness: 4,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: getScreenWidth(131)),
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
                    SizedBox(height: getScreenHeight(34.97)),
                    Container(
                      padding: EdgeInsets.only(
                        left: getScreenWidth(15.21),
                        top: getScreenHeight(21.73),

                      ),
                      height: getScreenHeight(126.06),
                      decoration: BoxDecoration(
                          color: Palette.kPrimaryColor,
                          borderRadius: BorderRadius.circular(21.73)),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}


