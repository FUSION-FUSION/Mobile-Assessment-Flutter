import 'package:flutter/material.dart';

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
            Icons.menu,
            color: kBlackColor,
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
