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
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What kind of user are\nyou?',
          style: ThemeStyles.primaryText,),
          SizedBox(height: 10),
          Text('We will adapt the app to suit your\nneeds',
          style: ThemeStyles.secondaryText,),
        ],

      ),
    );
  }
}
