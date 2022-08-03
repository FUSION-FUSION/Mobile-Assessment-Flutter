import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/select_flavor_button.dart';



class AuthWelcomeScreen extends StatelessWidget {

  const AuthWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =  MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      Container (
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:
          [
          AppColors.primary,
          Colors.white,
          ],
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
        ),
    child: Stack(
      children: [
      CloudWidget(),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 16.0.w ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Text("What kind of user are\nyou?", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 8.0.h,),
              Text("We will adapt the app to suit your\nneeds.",textAlign: TextAlign.left, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
              SizedBox(height: 50.0.h,),
              SizedBox(
                height: 120.0,
                width: double.infinity,
                child:
                select_flavor_button(
                  label: "Personal",
                ),

              ),
              SizedBox(height: 37.0.h,),
              SizedBox(
                height: 120.0,
                width: double.infinity,
                child:
                select_flavor_button(label: "E-commerce"),

              ),
            ],

          ),
        )
      ],
    ),
      ),
    );
  }
}

class CloudWidget extends StatelessWidget {
  const CloudWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      child:
      const Image(image: AssetImage("assets/images/bg-app-cloud.png"),
       fit: BoxFit.cover,
       ),
    );
  }
}
