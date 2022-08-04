import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';

import '../widgets/shipify_button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Congratulations!',
                    style: ThemeStyles.primaryText,),
                    Text('Your account has been successfully\ncreated.',style: ThemeStyles.secondaryText,),
                    Image.asset('assets/ic-congratulations.png',),
                    SizedBox(
                      child: ShipifyButton(
                        onPressed: _onPressed,
                        text: 'Continue',
                        fontSize: 35,
                        radius: 15,
                        backgroundColor: Colors.blue,
                        color: Colors.white,

                      ),
                      /*ElevatedButton(onPressed: _onPressed,
                          child: Text('Continue',
                      style: TextStyle(
                        fontSize: 35,
                      ),),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))
                        ),

                      ),*/
                    ),],

            ))
          ],

        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>SignInScreen()));
  }
}
