import 'dart:developer';
import 'package:timelines/timelines.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';

class CustomStepperContainer extends StatelessWidget {
  final Widget? text1;
  final Widget? text2;
  final Widget? text3;
  final Widget? text4;

  const CustomStepperContainer({Key? key, this.text1, this.text2, this.text3, this.text4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 120, width: double.maxFinite, padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: ColorManager.teal, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text1!,
              text2!,
              text3!,
              text4!
            ],
          ),
          Expanded(
            child: FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                color: ColorManager.white,
                direction: Axis.horizontal,
                connectorTheme: const ConnectorThemeData(color: ColorManager.white)
              ),
              builder: TimelineTileBuilder.connectedFromStyle(connectionDirection: ConnectionDirection.after,
                connectorStyleBuilder: (context, index) {
                  return (index == 2) ? ConnectorStyle.dashedLine : ConnectorStyle.solidLine;
                },
                indicatorStyleBuilder: (context, index){
                  return index == 0 || index == 1 ? IndicatorStyle.dot : IndicatorStyle.outlined;
                },
                itemExtent: 75.0,
                itemCount: 4,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("04 Mar, 2022", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),),
              Text("05 Mar, 2022", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorManager.white, fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
}
