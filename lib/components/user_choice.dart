import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/ecommerce_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';

class UserChoice extends StatefulWidget {
  const UserChoice({Key? key}) : super(key: key);

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 500,
          child: ElevatedButton(
              onPressed: _onPersonalPressed,
              child: Text('Personal',
              style: ThemeStyles.buttonText,),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),

          ),
        ),
        SizedBox(height: 50,),
        SizedBox(
          height: 150,
          width: 500,
          child: ElevatedButton(onPressed: _onEcommercePressed,
              child: Text('E-commerce',
              style: ThemeStyles.buttonText,),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),),
        ),
      ],
    );
  }

  void _onPersonalPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalScreen()));
  }

  void _onEcommercePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EcommerceScreen()));
  }
}
