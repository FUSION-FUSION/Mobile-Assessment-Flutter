import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';
import 'package:dotted_line/dotted_line.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _TrackingState();
  }
}

class _TrackingState extends State<Tracking> {
  bool check = false;

  Widget timelineContainer() {
    return Container(
      height: 126,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      decoration: BoxDecoration(
        color: babyBlue,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pickup",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: white),
            ),
            Text(
              "Jibowu Terminal",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: white),
            ),
            Text(
              "Abuja Terminal",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: white),
            ),
            Text(
              "Collected",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: white),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(children: [
          Icon(
            Icons.circle,
            color: white,
            size: 20,
          ),
          Container(
            width: 80,
            color: white,
            height: 2.5,
          ),
          SizedBox(width: 1),
          Icon(
            Icons.circle,
            color: white,
            size: 20,
          ),
          SizedBox(width: 2),
          DottedLine(
            lineLength: 85,
            lineThickness: 2.75,
            dashColor: white.withOpacity(0.75),
            dashGapLength: 6,
          ),
          Icon(
            Icons.circle,
            color: white.withOpacity(0.5),
            size: 20,
          ),
          DottedLine(
            lineLength: 85,
            lineThickness: 2.75,
            dashColor: white.withOpacity(0.75),
            dashGapLength: 6,
          ),
          Icon(
            Icons.circle,
            color: white.withOpacity(0.5),
            size: 20,
          ),
        ]),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "04 Mar, 2022",
              style: TextStyle(fontSize: 14, color: white),
            ),
            Text(
              "05 Mar, 2022",
              style: TextStyle(fontSize: 14, color: white),
            )
          ],
        )
      ]),
    );
  }

  Widget trackerColumn() {
    return Column(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: Color(0xFF8FF0EA),
            shape: BoxShape.circle,
            border: Border.all(color: babyBlue, width: 4.5),
          ),
        ),
        SizedBox(height: 2),
        DottedLine(
          direction: Axis.vertical,
          lineLength: 60,
          dashColor: babyBlue.withOpacity(0.75),
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: Color(0xFF8FF0EA),
            shape: BoxShape.circle,
            border: Border.all(color: babyBlue, width: 4.5),
          ),
        ),
        SizedBox(height: 2),
        DottedLine(
          direction: Axis.vertical,
          lineLength: 60,
          dashColor: babyBlue.withOpacity(0.75),
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: white,
            shape: BoxShape.circle,
            border:
                Border.all(color: Colors.black.withOpacity(0.5), width: 4.5),
          ),
        ),
        SizedBox(height: 2),
        DottedLine(
          direction: Axis.vertical,
          lineLength: 60,
          dashColor: Colors.black.withOpacity(0.75),
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: white,
            shape: BoxShape.circle,
            border:
                Border.all(color: Colors.black.withOpacity(0.5), width: 4.5),
          ),
        ),
      ],
    );
  }

  Widget successColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delivered Successfully",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 3),
        Text(
          "Bishop's Court, Owerri",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 45),
        Text(
          "Delivered Successfully",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 3),
        Text(
          "Bishop's Court, Owerri",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 45),
        Text(
          "Delivered Successfully",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 3),
        Text(
          "Bishop's Court, Owerri",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 45),
        Text(
          "Delivered Successfully",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 3),
        Text(
          "Bishop's Court, Owerri",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget checkboxColumn() {
    return Column(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          checkColor: babyBlue,
          activeColor: Colors.transparent,
          side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: babyBlue),
          ),
        ),
        SizedBox(height: 35),
        Checkbox(
          value: true,
          onChanged: (value) {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          checkColor: babyBlue,
          activeColor: Colors.transparent,
          side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: babyBlue),
          ),
        ),
        SizedBox(height: 35),
        Checkbox(
          value: false,
          onChanged: (value) {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          checkColor: babyBlue,
          activeColor: Colors.transparent,
          side: MaterialStateBorderSide.resolveWith(
            (states) =>
                BorderSide(width: 1.0, color: Colors.black.withOpacity(0.5)),
          ),
        ),
        SizedBox(height: 35),
        Checkbox(
          value: false,
          onChanged: (value) {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          checkColor: babyBlue,
          activeColor: Colors.transparent,
          side: MaterialStateBorderSide.resolveWith(
            (states) =>
                BorderSide(width: 1.0, color: Colors.black.withOpacity(0.5)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/google_map.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 36,
                left: 20,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 44,
                        width: 46,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(17),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(69, 108, 208, 0.18),
                                blurRadius: 24,
                                offset: Offset(2, 4),
                              )
                            ]),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 37,
                      width: 288,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(69, 108, 208, 0.18),
                              blurRadius: 24,
                              offset: Offset(2, 4),
                            )
                          ]),
                      child: Text(
                        "HH-INT-D9FD00-JBW-ORI",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              DraggableScrollableSheet(
                minChildSize: 0.3,
                initialChildSize: 0.6,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            offset: Offset(3, 2),
                            blurRadius: 7)
                      ],
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(
                        controller: scrollController,
                        physics: ClampingScrollPhysics(),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      color: Colors.black.withOpacity(0.6),
                                      size: 24,
                                    ),
                                    Positioned(
                                        top: 8,
                                        child: Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: Colors.black.withOpacity(0.6),
                                          size: 24,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          timelineContainer(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Route Details",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 360,
                                  child: Row(
                                    children: [
                                      trackerColumn(),
                                      SizedBox(width: 15),
                                      successColumn(),
                                      Spacer(),
                                      checkboxColumn(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
