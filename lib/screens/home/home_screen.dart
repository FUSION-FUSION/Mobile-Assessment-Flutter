import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_assessment_flutter/screens/home/map_screen.dart';
import 'package:mobile_assessment_flutter/util/constants/colors.dart';
import 'package:mobile_assessment_flutter/util/constants/strings.dart';
import 'package:mobile_assessment_flutter/util/navigators.dart';
import 'package:mobile_assessment_flutter/widgets/button_widget.dart';
import 'package:mobile_assessment_flutter/widgets/send_package_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "Home-Screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    var size = MediaQuery
        .of(context)
        .size;
    Locale locale= Localizations.localeOf(context);
    var format =NumberFormat.simpleCurrency(locale: Platform.localeName,name: 'NGN');

    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 248, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.sort),
                Text(
                  "Hello, ${user?.displayName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                Image.asset(
                  "$imageDir/ic-notification.png",
                  scale: 5,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * .09,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("$imageDir/bg-dashboard-balance.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomRight),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total Balance",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          "${format.currencySymbol} 50,000",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              minimumSize: Size(0, size.height * .04),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Top up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_right_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: size.height * .2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Track your waybill",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: textColor1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Waybill Number',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Image.asset(
                        "$imageDir/ic-search.png",
                        scale: 3,
                      ),
                      suffixIcon: ButtonWidget(
                          buttoncolor: primaryColor,
                          textcolor: Colors.white,
                          buttonText: "Track",
                          onPressed: () {
                            changeScreen(context, const MapScreen());
                          },
                          buttonHieght: 10,
                          buttonWidth: 10,
                          fontsize: 16,
                          fontWeight: FontWeight.w500),
                      contentPadding: const EdgeInsets.all(1),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Send a Package",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: textColor1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

           SendPackageWidget(),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Other Actions",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: textColor1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),


           Row(
             children: [
               Expanded(
                 child: Container(
                   padding: EdgeInsets.only(top:20,left: 10,
                   right: 10),
                   height: size.height * .2,
                   width: size.width * .5,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       const Text(
                         " Waybill History",
                         textAlign: TextAlign.center,
                         style:
                         TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         height: 3,
                         width: 20,
                         decoration: BoxDecoration(
                             color: primaryColor,
                             borderRadius: BorderRadius.circular(20)),
                       ),
                       const Text(
                         " Records of all your\n waybills",
                         style: TextStyle(
                             fontSize: 15, fontWeight: FontWeight.w400),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [

                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.black,
                               minimumSize: Size(0, size.height * .03),
                               shape: const CircleBorder(),
                             ),
                             onPressed: () {},
                             child: const Icon(
                               Icons.arrow_forward,
                               color: Colors.white,
                               size: 15,
                             ),
                           )
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               const SizedBox(width: 20,),

               Expanded(
                 child: Container(
                   padding: const EdgeInsets.only(top:20,left: 10,
                       right: 10),
                   height: size.height * .2,
                   width: size.width * .5,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       const Text(
                         " Get Help",
                         textAlign: TextAlign.center,
                         style:
                         TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         height: 3,
                         width: 20,
                         decoration: BoxDecoration(
                             color: primaryColor,
                             borderRadius: BorderRadius.circular(20)),
                       ),
                       const Text(
                         " Get help & support\n from our team",
                         style: TextStyle(
                             fontSize: 15, fontWeight: FontWeight.w400),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [

                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.black,
                               minimumSize: Size(0, size.height * .03),
                               shape: const CircleBorder(),
                             ),
                             onPressed: () {},
                             child: const Icon(
                               Icons.arrow_forward,
                               color: Colors.white,
                               size: 15,
                             ),
                           )
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
           ],)
          ],
        ),
      ),
    );
  }
}
