import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = "Home-Screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              navigatorKey.currentState!.popUntil((route) => route.isFirst);
            },
            child: const Text("sign up",style: TextStyle(fontSize: 20,color: Colors.white)),
          )
        ],
      ),
      body: Text(
        "${user?.displayName}",
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
      ),);
  }
}
