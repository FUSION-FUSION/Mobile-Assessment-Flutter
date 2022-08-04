import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';
import 'package:mobile_assessment_flutter/widgets/card_route_widget.dart';
import 'package:mobile_assessment_flutter/widgets/delivered_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget buidDraggHandle() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              panelController.panelPosition = 0.6;
            },
            child: Container(
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
            ),
          ),
          SizedBox(
            width: size.width * .3,
          ),
          IconButton(
            onPressed: () {
              panelController.isPanelOpen
                  ? panelController.close()
                  : panelController.open();
              print(panelController.isPanelOpen);
            },
            icon: const Icon(
              Icons.unfold_more_outlined,
              color: textColor1,
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListView(
        controller: controller,
        padding: EdgeInsets.zero,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidDraggHandle(),
              const SizedBox(
                height: 20,
              ),
              const CardRouteWidget(),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Route Details",
                    style: TextStyle(
                        fontSize: 20,
                        color: textColor1,
                        fontWeight: FontWeight.w500),
                  )),
               const DeliveredWidget(icon: Icons.check_box_outlined,boxColor: primaryColor, indateColor:  Color.fromRGBO(143, 240, 234, 1),borderColor: primaryColor,),
              const DeliveredWidget(icon: Icons.check_box_outlined,boxColor: primaryColor, indateColor: Color.fromRGBO(143, 240, 234, 1),borderColor: primaryColor,),
              const DeliveredWidget(icon: Icons.check_box_outline_blank, boxColor: Colors.grey,indateColor:Colors.white ,borderColor:Colors.grey ,),
              const DeliveredWidget(icon: Icons.check_box_outline_blank, boxColor: Colors.grey,indateColor:Colors.white ,borderColor:Colors.grey ,show: false,),
            ],
          )
        ],
      ),
    );
  }
}
