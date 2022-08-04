import 'package:flutter/material.dart';
import '../track_location_page.dart';

class TrackWaybillWidget_ extends StatelessWidget {
  const TrackWaybillWidget_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 150,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(20),
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
          color: Color(0xFFFCFDFF),
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 12, bottom: 10, left: 8),
          child: Text(
            'Track your waybill',
            style: TextStyle(
                fontSize: 29,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          children: [
            Container(
                margin: EdgeInsets.all(0),
                child: TextField(
                  cursorHeight: 20,
                  autofocus: false,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(fontSize: 22.0),
                  decoration: InputDecoration(
                    hintText: 'Waybill Number',
                    filled: true,
                    fillColor: Color(0xFFFCFDFF),
                    contentPadding: const EdgeInsets.only(left: 45.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFF46A5B9)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                        BorderSide(color: Color(0xFF46A5B9))),
                  ),
                )),
            Container(
              alignment: Alignment.centerLeft,
              width: 20,
              height: 20,
              margin: EdgeInsets.only(top: 13.5, left: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/ic-search.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 3, top: 3),
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 80,
                  height: 41.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      textStyle: TextStyle(
                          fontSize: 22, fontFamily: 'JosefinSans'),
                      primary: Color(0xFF46A5B9),
                      onPrimary: Colors.white,
                      minimumSize: Size(20, 43),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (context) => TrackLocationPage())
                      );
                    },
                    child: Container(child: Text('Track')),
                  ),
                )),
          ],
        ),
      ]),
    );
  }
}
