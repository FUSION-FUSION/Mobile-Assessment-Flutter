import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/veri_ui.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToVeri();
  }

  _navigateToVeri() async {
    await Future.delayed(Duration(milliseconds: 500), () {});
    Navigator.pushReplacementNamed(context, '/very');
  }

  @override
  Widget build(BuildContext context) {
    return Verii(
      formKey: _formKey,
      redd: '00:52',
    );
  }
}
