import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/shipify_button.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
            children: [
              DashBar(),
              Container(
                child: Expanded(
                  child: ListView(
                    children: [
                      BalanceSection(),
                      SizedBox(height: 15),
                      WayBillSection(),
                      SizedBox(height: 15),
                      PackageSection(),


    ],),),),],),),);
  }
}

class DashBar extends StatefulWidget {
  const DashBar({Key? key}) : super(key: key);

  @override
  State<DashBar> createState() => _DashBarState();
}

class _DashBarState extends State<DashBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/menu.png', width: 30,),
        Text('Hello, John.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        Image.asset('assets/ic-notification.png', width: 30,)
      ],
    );
  }
}




class BalanceSection extends StatefulWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  State<BalanceSection> createState() => _BalanceSectionState();
}

class _BalanceSectionState extends State<BalanceSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/bg-dashboard-balance.png'),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Balance', style: TextStyle(
                  fontSize: 18,
                ),),
                Text('#50,000', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                onPressed: null,
                child: Row(
                  children: [
                    Text('Top Up',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),),
                    Icon(Icons.keyboard_double_arrow_right,
                      color: Colors.white,),

                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),),
    );
  }
}



class WayBillSection extends StatefulWidget {
  const WayBillSection({Key? key}) : super(key: key);

  @override
  State<WayBillSection> createState() => _WayBillSectionState();
}

class _WayBillSectionState extends State<WayBillSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(
              'Track your waybill',
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Icon(Icons.search,
                  size: 20,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Waybill Number',
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Track',
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}


class PackageSection extends StatefulWidget {
  final bool? activated;
  PackageSection({this.activated,});

  @override
  State<PackageSection> createState() => _PackageSectionState();
}

class _PackageSectionState extends State<PackageSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Send a Package'
        ),

        GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomLeft,
                    image: AssetImage('assets/ic-bike.png',)
                ),
                boxShadow: [BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0.5,
                ),],

              ),
              child: Stack(
                children: [
                  Text('Same State',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,)),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      width: 22,
                      height: 3,
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Deliveries within the\nsame State',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset('assets/ic-road-same-state.png',
                      fit: BoxFit.contain,),
                  ),

                  if (widget.activated == true)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(bottom: 20, right: 10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 12,
                        ),
                      ),
                    ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                      margin: EdgeInsets.only(bottom: 30, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            spreadRadius: 0.1,
                          ),],
                      ),
                      child: Text(
                        'Coming soon',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),

                    ),),],
              ),
            );
          }),
        ),
      Row(
          children: [

          ],
        )
      ],
    );
  }
}

