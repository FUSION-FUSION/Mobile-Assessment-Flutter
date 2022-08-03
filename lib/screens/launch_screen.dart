import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_appBar.dart';

class Launch extends StatefulWidget {
  const Launch({Key? key}) : super(key: key);

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecedf1),
      body: SafeArea(
          child: Column(
        children: [
          const customAppBar(
            title: 'What kind of user are you?',
            subtitle: 'We will adapt the app to suit your needs.',
          ),
          verticalSpaceCustom(8.h),
          Custom_but(
            text: 'Personal',
            onTap: () => Navigator.pushNamed(context, '/personal'),
          ),
          verticalSpaceCustom(40.h),
          Custom_but(
            text: 'E-commerce',
            onTap: () => Navigator.pushNamed(context, '/commerce'),
          )
        ],
      )),
    );
  }
}
