import 'package:flutter/material.dart';

import '../../constants/assets_constant_name.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          const Text(
            'Hello, John.',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          Container(
            height: 30,
            width: 30,
            child: Image.asset(
              icNotification,
            ),
          )
        ],
      ),
    );
  }
}