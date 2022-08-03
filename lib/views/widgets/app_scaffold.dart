import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: ThemeProvider.current(context).backgroundGradient,
        ),
        child: SingleChildScrollView(
          child: Expanded(child: child,),
        ),
      ),
    );
  }
}
