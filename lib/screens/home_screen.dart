import 'package:flutter/material.dart';

// visual components
import 'package:mobile_assessment_flutter/models/package_type_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PackageLocationCard(
          title: '',
          description: '',
          bgImage: 'images/ic-road-same-state.png',
        )
      ),
    );
  }
}
