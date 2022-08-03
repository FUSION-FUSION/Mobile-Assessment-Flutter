import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/text_styles.dart';

import '../gMap/google_map_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 16.0.w,right:16.0.w, top: 30.0.h, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.notes,
                          size: 40.0,)),
                    Text("Hello, John.", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black,fontSize: 20.0),),
                    Container(
                      height: 30.0,
                        child: Image(image: AssetImage("assets/images/ic-notification.png"), ))
                  ],
                ),


                SizedBox( height: 20.0.h,),

                Container(
                  height: 80.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: const DecorationImage(image: AssetImage("assets/images/bg-dashboard-balance.png"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Balance", style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                            Text("# 50,000", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 20.0, color: Colors.black),),
                          ],
                        ),
                        Container(
                          height: 30.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen,
                            borderRadius: BorderRadius.circular(20.0.r)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Top up", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 12.0),),
                                Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.0.h,),

                Container(
                  height: 115.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Track your waybill", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 15.0, color: Colors.black),),
                            SizedBox( height: 8.0.h,),
                            Container(
                              height: 40.0.h,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(color: Colors.teal)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 1.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 10.0,),
                                    Container(
                                      height: 15.0,
                                      width: 15.0,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/ic-search.png")
                                          )
                                      ),
                                      // color: Colors.red,

                                    ),


                                    //TextField Widget
                                    Container(
                                      height: 40.0.h,
                                      width: 200,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.0.r)
                                      ),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: "waybill Number",
                                        ),
                                      ),
                                    ),

                                    //Track Widget
                                    Container(
                                      height: 35.0.h,
                                      width: 70.0.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13.0),
                                        color: Colors.teal,
                                      ),
                                      child: Center(child: InkWell(
                                        onTap:() {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (ctx) {
                                                return GoogleMapScreen();
                                              }));
                                        },
                                          child: Text("Track",style: AppTextStyle.kNormalWhiteTextStyle,))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.0.h, left: 12.0.w, bottom:20.0.h),
                  child: Text("Send a Package", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: const [
                     HomePackageWidget1(
                       header: "Same State",
                       subHeader: "Deliveries within the same state",
                       autoImg: "assets/images/ic-bike.png",
                       rdImg: "assets/images/ic-road-same-state.png",
                     ),
                     HomePackageWidget2(
                       header: "InterState",
                       subHeader: "Deliveries within outside your current state",
                       autoImg: "assets/images/Delivery Van.png",
                       rdImg: "assets/images/ic-road-interstate.png",
                     ),
                   ],
                 ),
                 SizedBox(height: 20.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: const [
                     HomePackageWidget3(
                       header: "Charter",
                       subHeader: "Request a vehicle ",
                       autoImg: "assets/images/ic-truck.png",
                       rdImg: "assets/images/ic-road-charter.png",
                     ),
                     HomePackageWidget4(
                       header: "International",
                       subHeader: "send Packages to other countries",
                       autoImg: "assets/images/ic-aeroplane.png",
                     ),
                   ],
                 ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.0.h, left: 12.0.w, bottom:20.0.h),
                  child: Text("Other Actions", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    HomeBottomWidget(
                      header: "Waybill History",
                      subHeader: "Record of all your waybills",
                    ),
                    HomeBottomWidget(
                      header: "Get Help",
                      subHeader: "Get help and surpport from our team",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePackageWidget1 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String rdImg;
  final String autoImg;
  final Widget? child;
  final Widget? child2;

  const HomePackageWidget1({
    this.child2,
       this.child,
    required this.autoImg,
    required this.header,
    required this.rdImg,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
        children:[
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(image: AssetImage(rdImg)),
            ],
          )),
         Column(
          children: [

           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 20.0,),
                 child2 ?? Container(),
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                   child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 17.0, color: Colors.black),),
                 ),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 4.0),
                   child: Container(height: 3.0.h,width:30.0 ,
                     color: AppColors.primaryGreen,
                   ),
                 ),
                 Padding(
                   padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                   child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                 ),
                 const SizedBox(height: 10.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       height: 120.0,
                         child: Image(image: AssetImage(autoImg))),

                     Padding(
                       padding:  EdgeInsets.only(top: 70.0, right: 10.0),
                       child: child ?? CircleAvatar(backgroundColor: Colors.white, radius: 13.0,
                       child: Icon(Icons.arrow_forward_outlined, color: Colors.black,size: 16.0,),),
                     )
                   ],
                 ),

               ],
             ),
           ),
          ],
        ),
      ]
      ),
    );
  }
}
class HomePackageWidget2 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String rdImg;
  final String autoImg;
  final Widget? child;
  final Widget? child2;

  const HomePackageWidget2({
    this.child2,
       this.child,
    required this.autoImg,
    required this.header,
    required this.rdImg,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
        children:[
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(image: AssetImage(rdImg)),
            ],
          )),
         Column(
          children: [

           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 10.0,),
                Image(image: AssetImage("assets/images/ic-curve.png")),
                 Padding(
                   padding:  EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                   child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 17.0, color: Colors.black),),
                 ),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 4.0),
                   child: Container(height: 3.0.h,width:30.0 ,
                     color: AppColors.primaryGreen,
                   ),
                 ),
                 Padding(
                   padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                   child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                 ),
                 const SizedBox(height: 5.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       height: 100.0,
                         child: Image(image: AssetImage(autoImg))),

                     Padding(
                       padding:  EdgeInsets.only(top: 70.0, right: 10.0),
                       child: child ?? CircleAvatar(backgroundColor: Colors.white, radius: 13.0,
                       child: Icon(Icons.arrow_forward_outlined, color: Colors.black,size: 16.0,),),
                     )
                   ],
                 ),

               ],
             ),
           ),
          ],
        ),
      ]
      ),
    );
  }
}
class HomePackageWidget3 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String rdImg;
  final String autoImg;
  final Widget? child;
  final Widget? child2;

  const HomePackageWidget3({
    this.child2,
    this.child,
    required this.autoImg,
    required this.header,
    required this.rdImg,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
          children:[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage(rdImg)),
              ],
            )),
            Column(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0,),
                      Image(image: AssetImage("assets/images/ic-curve.png")),                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 17.0, color: Colors.black),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(height: 3.0.h,width:30.0 ,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                        child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                      ),
                      const SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 110.0,
                              child: Image(image: AssetImage(autoImg))),

                          Padding(
                            padding:  EdgeInsets.only(top: 70.0, right: 10.0),
                            child: child ?? const CircleAvatar(backgroundColor: Colors.white, radius: 13.0,
                              child: Icon(Icons.arrow_forward_outlined, color: Colors.black,size: 16.0,),),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
class HomePackageWidget4 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String autoImg;
  final Widget? child;
  final Widget? child2;

  const HomePackageWidget4({
    this.child2,
       this.child,
    required this.autoImg,
    required this.header,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
        children:[
         Column(
          children: [

           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 20.0,),
                 child2 ?? Container(),
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                   child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 18.0, color: Colors.black),),
                 ),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 4.0),
                   child: Container(height: 3.0.h,width:30.0 ,
                     color: AppColors.primaryGreen,
                   ),
                 ),
                 Padding(
                   padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                   child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                 ),
                 const SizedBox(height: 10.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       height: 120.0,
                         child: Image(image: AssetImage(autoImg))),

                     Padding(
                       padding:  EdgeInsets.only(top: 70.0,),
                       child: Container(
                         height: 20,
                         width: 100,
                         decoration: BoxDecoration(
                           color: AppColors.primaryGreen,
                           borderRadius: BorderRadius.circular(12.0)
                         ),
                       child: Icon(Icons.arrow_forward_outlined, color: Colors.black,size: 16.0,),),
                     )
                   ],
                 ),

               ],
             ),
           ),
          ],
        ),
      ]
      ),
    );
  }
}
class HomeBottomWidget extends StatelessWidget {
  final String header;
  final String subHeader;

  const HomeBottomWidget({
    required this.header,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
          children:[
            Column(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 16.0, color: Colors.black),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(height: 3.0.h,width:30.0 ,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                        child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black,fontSize: 13.0),),
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(left: 140.0),
                        child: CircleAvatar(backgroundColor: Colors.black, radius: 13.0,
                          child: Icon(Icons.arrow_forward_outlined, color: Colors.white,size: 16.0,),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
