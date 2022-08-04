import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/veri_ui.dart';

class Veri extends StatefulWidget {
  const Veri({Key? key}) : super(key: key);

  @override
  State<Veri> createState() => _VeriState();
}

class _VeriState extends State<Veri> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Verii(
      formKey: _formKey,
      redd: 'Code Expired',
    );
  }
}
