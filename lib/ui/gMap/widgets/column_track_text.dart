import 'package:flutter/material.dart';


class ColumnTrackText extends StatelessWidget {
  const ColumnTrackText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children:const [
        Text("Delivered Successfully"),
        Text("Bishop's court owerri."),
      ],);
  }
}
