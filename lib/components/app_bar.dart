import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('What kind of user are\nyou?',
          style: ThemeStyles.primaryText,),
          Text('We will adapt the app to suit your needs',
          style: ThemeStyles.secondaryText,),
        ],

      ),
    );
  }
}
