import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../util/constants/colors.dart';

class DeliveredWidget extends StatelessWidget {
  final IconData icon;
  final Color boxColor;
  final Color indateColor;
  final Color borderColor;
  final bool? show;

  const DeliveredWidget(
      {Key? key,
      required this.icon,
      required this.boxColor,
      required this.indateColor,
      required this.borderColor,
      this.show=true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          Container(
            height: 20,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indateColor,
                border: Border.all(color: borderColor, width: 5)),
          ),
           Expanded(
            child: Visibility(visible: show!,
              child: const DottedLine(
                direction: Axis.vertical,
                lineLength: 30,
                dashColor: Colors.black45,
                lineThickness: 3,
                dashRadius: 5,
                dashGapLength: 2,
              ),
            ),
          ),
        ],
      ),
      title: Column(
        children: const [
          Text(
            "Delivered Successfully",
            style: TextStyle(
                fontSize: 15, color: textColor1, fontWeight: FontWeight.w400),
          ),
          Text(
            "Bishop's Court Owerri",
            style: TextStyle(
                fontSize: 10, color: textColor1, fontWeight: FontWeight.w300),
          ),
        ],
      ),
      trailing: Icon(
        icon,
        color: boxColor,
      ),
    );
  }
}
