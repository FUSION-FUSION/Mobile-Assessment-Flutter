import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/home.dart';

class AuthButton extends StatelessWidget {

  String label;
  Color? buttonColor;
  Color? textColor;
  double? height;
  double? width;

  AuthButton({
    Key? key, required this.label,  this.buttonColor, this.textColor, this.width, this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.0.h,
      width: width ?? 140.0.w,
      decoration: BoxDecoration(
          color: buttonColor ?? Colors.white,
          borderRadius: BorderRadius.circular(20.0.r)),
      child: TextButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
            return HomeScreen();
          }));
        },
        child: Center(
            child: Text(
              label,
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 21.0, color: textColor ?? Colors.white),
            )),
      ),
    );
  }
}