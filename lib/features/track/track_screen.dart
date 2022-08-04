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
    const panelMinHeight = 180.0;
    final panelMaxHeight = MediaQuery.of(context).size.height * 0.90;
    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: panelMinHeight,
        maxHeight: panelMaxHeight,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                color: Colors.black,
                height: 50,
                child: Text('Hello'),
              ),
              GoogleMap(
                initialCameraPosition:
                    const CameraPosition(target: sourceLocation, zoom: 14.5),
                markers: {
                  const Marker(
                      markerId: MarkerId('source'), position: sourceLocation),
                },
              ),
            ],
          ),
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
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              height: 120,
              decoration: BoxDecoration(
                color: kThemeColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Pickup',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Jibowo Terminal',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Abuja Terminal',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 2.2,
                        width: 97,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 2.2,
                        width: 97,
                        color: Colors.grey[400],
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[400],
                        ),
                      ),
                      Container(
                        height: 2.2,
                        width: 97,
                        color: Colors.grey[400],
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '04 Mar, 2022',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '05 Mar, 2022',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            SizedBox(width: 20),
            Text(
              'Route Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        ListView(
          padding: const EdgeInsets.only(top: 0),
          shrinkWrap: true,
          children: const [
            SizedBox(
              height: 65,
              child: ListTile(
                leading: Icon(
                  Icons.radio_button_checked_sharp,
                  color: kThemeColor,
                ),
                trailing: Icon(
                  Icons.check_box_outlined,
                  color: kThemeColor,
                ),
                title: Text('Delivered Successfully'),
                subtitle: Text('Bishop\'s Court, Owerri'),
              ),
            ),
            SizedBox(
              height: 65,
              child: ListTile(
                leading: Icon(
                  Icons.radio_button_checked_sharp,
                  color: kThemeColor,
                ),
                trailing: Icon(
                  Icons.check_box_outlined,
                  color: kThemeColor,
                ),
                title: Text('Delivered Successfully'),
                subtitle: Text('Bishop\'s Court, Owerri'),
              ),
            ),
            SizedBox(
              height: 65,
              child: ListTile(
                leading: Icon(
                  Icons.radio_button_off,
                ),
                trailing: Icon(
                  Icons.check_box_outline_blank,
                ),
                title: Text('Delivered Successfully'),
                subtitle: Text('Bishop\'s Court, Owerri'),
              ),
            ),
            SizedBox(
              height: 65,
              child: ListTile(
                leading: Icon(
                  Icons.radio_button_off,
                ),
                trailing: Icon(
                  Icons.check_box_outline_blank,
                ),
                title: Text('Delivered Successfully'),
                subtitle: Text('Bishop\'s Court, Owerri'),
              ),
            ),
          ],
        )
      ],
    );
  }

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
}
