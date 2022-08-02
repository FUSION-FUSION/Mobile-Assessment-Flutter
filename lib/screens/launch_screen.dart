import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';

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
          const Custom_but(
            text: 'Personal',
          ),
          verticalSpaceCustom(4),
          const Custom_but(
            text: 'E-commerce',
          )
        ],
      )),
    );
  }
}
