import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Hello, John.',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: const [
            ImageIcon(
              AssetImage('assets/ic-notification.png'),
            ),
          ],
        ),
      ),
    );
  }
}
