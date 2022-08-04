import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  const CustomAppBar({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
            width: 24,
            height: 16,
            child: Image.asset(
              'assets/Shipify-Assets/ic-menu.png',
              fit: BoxFit.contain,
            )),
        Text(
          'Hello, John',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: formTextColor, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/Shipify-Assets/ic-notification.png',
                fit: BoxFit.contain))
      ]),
    );
  }

  @override
  Size get preferredSize => Size(MediaQuery.of(context).size.width, 60);
}
