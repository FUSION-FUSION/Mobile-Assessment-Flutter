import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/ecommerce_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_button.dart';

class UserChoice extends StatefulWidget {
  const UserChoice({Key? key}) : super(key: key);

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              child: ShipifyButton(
                onPressed: _onPersonalPressed,
                text: 'Personal',
                radius: 20.0,
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 18,),
          SizedBox(
            height: 150,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
              child: ShipifyButton(
                onPressed: _onEcommercePressed,
                text: 'E-Commerce',
                radius: 20.0,
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPersonalPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalScreen()));
  }

  void _onEcommercePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EcommerceScreen()));
  }
}
