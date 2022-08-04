import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../screens/homepage.dart';

class TrackLocationPage extends StatelessWidget {
  const TrackLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
          backdropEnabled: true,
          panel: Center(
            child: Text('Oops...'),
          ),
          collapsed: Container(
            decoration: BoxDecoration(color: Color(0xFF46A5B9)),
            child: Center(
              child: Text(
                'Wipe Up',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'JosefinSans',
                    fontSize: 30),
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/map.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
                margin: EdgeInsets.only(bottom: 650, right: 320),
                // margin: EdgeInsets.only(right: 3, top: 3),
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 80,
                  height: 41.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      textStyle:
                          TextStyle(fontSize: 22, fontFamily: 'JosefinSans'),
                      primary: Color(0xFF46A5B9),
                      onPrimary: Colors.white,
                      minimumSize: Size(20, 43),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(child: Icon(Icons.arrow_back)),
                  ),
                )),
          )),
    );
  }
}
