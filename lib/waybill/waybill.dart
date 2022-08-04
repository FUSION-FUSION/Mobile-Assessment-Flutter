import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/waybill/bottomsheet.dart';

class WaybillPage extends StatelessWidget {
  const WaybillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [],
      ),
      bottomSheet: const WaybillBottomsheet(),
    );
  }
}
