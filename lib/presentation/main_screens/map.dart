import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/presentation/main_screens/widget/custom_app_bar.dart';
import 'package:mobile_assessment_flutter/presentation/main_screens/widget/custom_stepper_container.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:timelines/timelines.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  static const _initialCameraPosition = CameraPosition(target: LatLng(5.5096, 7.0391), zoom: 16); // 37.773927, -122.4312927
  GoogleMapController? _googleMapController;
  Marker? origin;
  Marker? _destination;
  double heightFactor = 0.3;
  addMarker(LatLng pos) {
    origin = Marker(markerId: const MarkerId("Origin"), icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed), position: pos);
  }

  @override
  void initState() {
    addMarker(const LatLng(5.5096, 7.0391));
    super.initState();
  }

  @override
  void dispose() {
    _googleMapController!.dispose();
    super.dispose();
  }
  Widget showMyBottomSheet(BuildContext context){
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        maxChildSize: 0.9,
        minChildSize: 0.3,
        builder: (BuildContext context, ScrollController controller){
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: controller,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10),
                      child: Align(alignment: Alignment.center,
                        child: Container(height: 5, width: 80,
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),),
                    const SizedBox(height: 50,),
                    CustomStepperContainer(
                      text1: Text("Pickup", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),),
                      text2: Text("Jibowo Terminal", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),),
                      text3: Text("Abuja Terminal", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),),
                      text4: Text("Collected", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),),
                    ),
                    const SizedBox(height: 30,),
                    Text("Route Details", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 20, fontWeight: FontWeight.w400),),
                    FixedTimeline.tileBuilder(
                      theme: TimelineThemeData(
                          nodePosition: 0,
                          color: ColorManager.teal, direction: Axis.vertical,
                          connectorTheme: const ConnectorThemeData(color: ColorManager.teal)
                      ),
                      builder: TimelineTileBuilder.connectedFromStyle(
                        contentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: index == 0 ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Delivered Successfully',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 16)),
                                    Text('Bishop’s Court, Owerri.',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 14)),
                                  ],
                                ),
                                Checkbox(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    activeColor: ColorManager.teal,
                                    value: true, onChanged: (value){

                                })
                              ],
                            ) : index == 1 ?
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Delivered Successfully',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 16)),
                                    Text('Bishop’s Court, Owerri.',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 14)),
                                  ],
                                ),
                                Checkbox(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    activeColor: ColorManager.teal,
                                    value: true, onChanged: (value){

                                })
                              ],
                            ) :  index == 2 ?
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Delivered Successfully',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 16)),
                                    Text('Bishop’s Court, Owerri.',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 14)),
                                  ],
                                ),
                                Checkbox(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    activeColor: ColorManager.teal,
                                    value: false, onChanged: (value){

                                })
                              ],
                            ) : index == 3 ?
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Delivered Successfully',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 16)),
                                    Text('Bishop’s Court, Owerri.',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.black900, fontSize: 14)),
                                  ],
                                ),
                                Checkbox(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    activeColor: ColorManager.teal,
                                    value: false, onChanged: (value){

                                })
                              ],
                            ) : const SizedBox()
                        ) ,
                        connectionDirection: ConnectionDirection.after,
                        connectorStyleBuilder: (context, index) {
                          return (index == 2) ? ConnectorStyle.dashedLine : ConnectorStyle.solidLine;
                        },
                        indicatorStyleBuilder: (context, index){
                          return index == 0 || index == 1 ? IndicatorStyle.dot : IndicatorStyle.outlined;
                        },
                        itemExtent: 80.0,
                        itemCount: 4,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0, right: 0,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              myLocationButtonEnabled: false,
              zoomControlsEnabled: true,
              compassEnabled: false,
              myLocationEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: _initialCameraPosition,
              onMapCreated: (controller) => _googleMapController = controller,
              markers: {
                origin!,
              },
            ),
          ),
          const CustomAppBar(),
          showMyBottomSheet(context)
        ],
      ),
    );
  }
}
