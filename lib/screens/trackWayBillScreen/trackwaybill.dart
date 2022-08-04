import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/screens/trackWayBillScreen/widgets/panel.dart';
import 'package:mobile_assessment_flutter/screens/trackWayBillScreen/widgets/trackAppBar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TrackWayBill extends StatefulWidget {
  static const routeName = '/track-waybill';
  @override
  State<TrackWayBill> createState() => TrackWayBillState();
}

class TrackWayBillState extends State<TrackWayBill> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: TrackAppBar(context: context, text: 'text'),
      body: SlidingUpPanel(
        controller: panelController,
        parallaxEnabled: true,
        minHeight: 210,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          panelController: panelController,
        ),
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
