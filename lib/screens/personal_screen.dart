import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

final _formKey = GlobalKey<FormState>();

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecedf1),
      body: SafeArea(
          child: Column(
        children: [
          const customAppBar(
            title: 'Welcome!',
            subtitle: 'Create an account to get started with Cargo Express',
          ),
          Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [],
              ))
        ],
      )),
    );
  }
}
