// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:mobile_assessment_flutter/constants/app_constants.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  static const LatLng sourceLocation = LatLng(5.476310, 7.025853);

  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelMinHeight = MediaQuery.of(context).size.height * 0.28;
    final panelMaxHeight = MediaQuery.of(context).size.height * 0.90;
    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: panelMinHeight,
        maxHeight: panelMaxHeight,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        body: GoogleMap(
          initialCameraPosition:
              const CameraPosition(target: sourceLocation, zoom: 14.5),
          markers: {
            const Marker(
                markerId: MarkerId('source'), position: sourceLocation),
          },
        ),
        panelBuilder: (controller) {
          return PanelWidget(
            controller: controller,
            panelController: panelController,
          );
        },
      ),
    );
  }
}

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        const SizedBox(height: 20),
        GestureDetector(
          onTap: togglePanel,
          child: Center(
            child: Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: kThemeColor,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
}
