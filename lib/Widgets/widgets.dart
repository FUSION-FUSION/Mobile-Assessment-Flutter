import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Util/colors.dart';

class Widgets {
  AppBar homeAppBar(BuildContext context, String name, double size) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kHomeScaffoldColor,
      leading: IconButton(
          iconSize: 15,
          onPressed: (() {}),
          icon: const Icon(
            FontAwesomeIcons.chartBar,
            color: kBlackColor,
            size: 20,
          )),
      centerTitle: true,
      title: Text(
        'Hello, $name.',
        style: TextStyle(fontSize: size, color: kBlackColor),
      ),
      actions: [
        IconButton(
          iconSize: 17,
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/ic-notification.png'),
            height: 28,
          ),
        ),
        const SizedBox(
          width: 5.0,
        )
      ],
    );
  }
}
