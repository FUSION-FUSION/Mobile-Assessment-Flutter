import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import "package:latlong2/latlong.dart";

class WaybillTrackingScreen extends StatelessWidget {
  static const id = '/waybilll';
  const WaybillTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeScaffoldColor,
      body: SnappingSheet(
        child: Stack(
          children: [
            Center(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(51.509364, -0.128928),
                  zoom: 9.2,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    userAgentPackageName: 'com.example.app',
                  ),
                ],
                // nonRotatedChildren: [
                //     AttributionWidget.defaultWidget(
                //         source: 'OpenStreetMap contributors',
                //         onSourceTapped: null,
                //     ),
                // ],
              ),
            ),
            Positioned(
              top: 50,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                              color: kGreyColor.withOpacity(0.1),
                              blurRadius: 10)
                        ]),
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: kGreyColor.withOpacity(0.1),
                              blurRadius: 10)
                        ]),
                    child: Text(
                      'HH-INT-D9FD00-JBW-ORI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.8),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
          ],
        ),
        grabbingHeight: 190,
        grabbing: SizedBox(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Container(
                        height: 3,
                        width: 50,
                        decoration: BoxDecoration(color: kGreyColor),
                      ),
                      Icon(Icons.keyboard_arrow_up_sharp)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: kPrimaryColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                height: 60,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '04 Mar, 2022',
                                style: DateStyle(),
                              ),
                              Text(
                                '05 Mar, 2022',
                                style: DateStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        sheetBelow: SnappingSheetContent(
            draggable: true,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Route Details'),
                  // ListView.builder(
                  //   itemCount: 4,
                  //   itemBuilder: (context, index){
                  //     return RouteDetail();
                  // })
                ],
              ),
            )),
      ),
    );
  }

  TextStyle DateStyle() {
    return TextStyle(
      color: kWhiteColor,
      fontSize: 12,
    );
  }
}
