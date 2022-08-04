import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../util/constants/strings.dart';
import '../../widgets/sliding_up_panel.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        maxHeight: size.height * .8,
        minHeight: size.height * .3,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$imageDir/ikeja_map.png"),
              fit: BoxFit.cover,
            ),
          ),
          constraints: const BoxConstraints.expand(),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: const Size(10, 55),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Icon(
                          Icons.arrow_back,
                          color: textColor1,
                        )),
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "City Name",
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
            controller: controller, panelController: panelController),
      ),
    );
  }
}
