import 'package:flutter/material.dart';

class RouteDetail extends StatefulWidget {
  const RouteDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<RouteDetail> createState() => _RouteDetailState();
}

class _RouteDetailState extends State<RouteDetail> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(
          value: isChecked,
          groupValue: const {},
          onChanged: (value) {
            setState(() {});
          }),
      trailing: Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          }),
      title: const Text('Delivered Successfully'),
      subtitle: const Text('Bishop\'s Counrt, Owerri.'),
    );
  }
}
