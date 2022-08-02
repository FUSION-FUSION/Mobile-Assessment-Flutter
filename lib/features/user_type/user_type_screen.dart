import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('What kind of user are'),
          Text('you?'),
          Text('We will adapt the app to suite your'),
          Text('needs'),
        ],
      ),
    );
  }
}
