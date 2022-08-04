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
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final text = (ModalRoute.of(context)!.settings.arguments) as String;
    return SafeArea(
      child: Scaffold(
        appBar: TrackAppBar(context: context, text: text),
        extendBodyBehindAppBar: true,
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
          body: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Shipify-Assets/Rectangle.png'),
                      fit: BoxFit.cover))),
        ),
      ),
    );
  }
}
