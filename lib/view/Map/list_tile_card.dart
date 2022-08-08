import 'package:flutter/material.dart';

import '../../constants/color_pallette.dart';


class ListTileCard extends StatefulWidget {
  const ListTileCard({Key? key}) : super(key: key);

  @override
  State<ListTileCard> createState() => _ListTileCardState();
}

class _ListTileCardState extends State<ListTileCard> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: check ? kPrimary : Colors.grey, width: 3),
            color: check ? Color(0xff8ff0ea) : Colors.white),
      ),
      title: const Text(
        'Delivered Successfully',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('Bishop\'s Court, Owerri.'),
      trailing: IconButton(
        onPressed: () {
          if (check == false) {
            check = true;
          } else {
            check = false;
          }
          setState(() {});
        },
        icon: check
            ? const Icon(Icons.check_box_outlined, color: kPrimary)
            : const Icon(
          Icons.check_box_outline_blank,
          color: Colors.grey,
        ),
      ),
    );
  }
}
