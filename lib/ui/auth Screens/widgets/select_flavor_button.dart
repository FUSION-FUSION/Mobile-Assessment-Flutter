import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';

import '../sign_up_screen.dart';

class select_flavor_button extends StatelessWidget {

  String label;

  select_flavor_button({
    Key? key, required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return SignUpScreen();
        }));
      },
      child:  Text(label, style: TextStyle(color:Colors.white, fontSize: 35.0),),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            )
        ),
        // padding:
        // MaterialStateProperty.all(EdgeInsets.all(50)),
        backgroundColor: MaterialStateProperty.all(
          AppColors.primaryGreen
           ), // <-- Button color
        overlayColor:
        MaterialStateProperty.resolveWith<Color>(
                (states) {
              if (states.contains(MaterialState.pressed)){
                return Colors.white54;// <-- Splash color
              }
              return Colors.white54;// <-- Splash color
            }
        ),
      ),
    );
  }
}
