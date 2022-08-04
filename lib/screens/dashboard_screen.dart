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
      body: SafeArea(
        child: Column(
          children: [
            DashBar(),
           Container(
             height: 75,
             width: 380,
                 decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       ),
                   child: Stack(
                     children: [
                       Align(
                         child: ClipRRect(
                         child: Image.asset('assets/bg-dashboard-balance.png'),
                         borderRadius: BorderRadius.circular(20),
                     ),
                         alignment: Alignment.bottomRight,
                       ),
                     Container(

                       child: Row(
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Total Balance',
                               style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                               ),),
                           Row(
                             children: [
                               Text(
                                 '₦',
                                 style: TextStyle(
                                   fontWeight: FontWeight.w600,
                                   fontSize: 24,
                                   fontFamily: 'Roboto',
                                 ),),
                                 Text(
                                   '50,000',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w600,
                                     fontSize: 24,
                                     fontFamily: 'Roboto',
                                   ),
                                 ),
                               ],
                           ),
                             ],
                           ),
                           ElevatedButton.icon(onPressed: null,
                             label: Text('Top Up',
                               style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),),
                             style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.blue),
                               shape: MaterialStateProperty.all(
                                 RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 ),
                               ),
                             ),
                             icon: Icon(Icons.keyboard_double_arrow_right_sharp),
                           ),

                         ],
                       ),
                     ),],

                   ),
                   ),

                 ],
               ),
             ),
           );
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

