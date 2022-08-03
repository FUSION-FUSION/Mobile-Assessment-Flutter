import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/themes/theme_styles.dart';

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
                      child: ElevatedButton(onPressed: _onPressed,
                          child: Text('Continue',
                      style: TextStyle(
                        fontSize: 35,
                      ),),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))
                        ),

                      ),
                    ),],

            ))
          ],

        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>SignInScreen()))
  }
}
