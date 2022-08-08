import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/color_pallette.dart';
import 'package:mobile_assessment_flutter/view/home/home_screen.dart';

import '../../constants/assets_constant_name.dart';
import 'list_tile_card.dart';

class ScrollableSheet extends StatefulWidget {
  static String routeName = '/scrollable_sheet';
  const ScrollableSheet({Key? key}) : super(key: key);

  @override
  State<ScrollableSheet> createState() => _ScrollableSheetState();
}

class _ScrollableSheetState extends State<ScrollableSheet> {
  bool stopOne = false;
  bool stopTwo = false;
  bool stopThree = false;
  bool stopFour = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Stack(
            children: [
              Container(
                height: height,
                width: width,
                child: Image.asset(
                   map,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  width: width,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Icon(
                            Icons.arrow_back
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: width * 0.6,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(
                          child: Text(
                            'HH-INT-D9FD00-JBW-ORI',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Spacer(flex: 3,),
                    ],
                  ),
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.25,
                minChildSize: 0.25,
                maxChildSize: 0.8,
                builder: (context, controller) {
                  return ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)
                    ),
                    child: Container(
                      height: height,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.07, horizontal: width * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(),
                                    Container(
                                      height: 3,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(2)
                                      ),
                                    ),
                                    Icon(
                                      Icons.unfold_more
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 10,
                                  ),
                                  width: width * 0.9,
                                  height: height * 0.15,
                                  decoration: BoxDecoration(
                                    color: kPrimary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              if (stopOne == false) {
                                                stopOne = true;
                                              } else {
                                                stopOne = false;
                                              }
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Pickup',
                                              style: TextStyle(
                                                  color: stopOne ? Colors.white : Color(0xffcdd3d5)),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              if (stopTwo == false) {
                                                stopTwo = true;
                                              } else {
                                                stopTwo = false;
                                              }
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Jibowu Terminal',
                                              style: TextStyle(
                                                  color: stopTwo ? Colors.white : Color(0xffcdd3d5)),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              if (stopThree == false) {
                                                stopThree = true;
                                              } else {
                                                stopThree = false;
                                              }
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Abuja Terminal',
                                              style: TextStyle(
                                                  color:
                                                      stopThree ? Colors.white : Color(0xffcdd3d5)),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              if (stopFour == false) {
                                                stopFour = true;
                                              } else {
                                                stopFour = false;
                                              }
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Collected',
                                              style: TextStyle(
                                                  color: stopFour ? Colors.white : Color(0xffcdd3d5)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          buildRoundContainer(stopOne),
                                          buildExpanded(stopTwo),
                                          buildRoundContainer(stopTwo),
                                          buildExpanded(stopThree),
                                          buildRoundContainer(stopThree),
                                          buildExpanded(stopFour),
                                          buildRoundContainer(stopFour)
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            '04 Mar, 2022',
                                            style: TextStyle(color: kSecBackground),
                                          ),
                                          Text(
                                            '05 Mar, 2022',
                                            style: TextStyle(color: kSecBackground),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Route Details',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              ListTileCard(),
                              ListTileCard(),
                              ListTileCard(),
                              ListTileCard(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            ],
          );
        }
      ),
    );
  }

  Expanded buildExpanded(bool stop) {
    if (stop == false) {
      stop = true;
      return Expanded(
        child: Container(
          height: 3,
          decoration: BoxDecoration(color: Color(0xffcdd3d5)),
        ),
      );
    } else {
      stop = false;
      return Expanded(
        child: Container(
          height: 3,
          decoration: BoxDecoration(color: Colors.white),
        ),
      );
    }
  }
}

Container buildRoundContainer(bool stop) {
  return Container(
    margin: EdgeInsets.all(2),
    width: 12,
    height: 12,
    decoration: BoxDecoration(
        color: stop ? Colors.white : Color(0xffcdd3d5),
        borderRadius: BorderRadius.circular(6)),
  );
}
