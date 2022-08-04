import 'package:flutter/material.dart';

class RouteDetails extends StatelessWidget {
  const RouteDetails({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Route Details',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: h * 0.01),
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: ListTile(
              title: Text(
                'Delivered Sucessfully',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                'Bishop\'s court Owerri ',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.check_box_outlined,
                color: Color(0xff46A5BA),
              ),
            ),
            node: TimelineNode(
              indicator: OutlinedDotIndicator(
                backgroundColor: const Color.fromARGB(255, 3, 237, 225),
                borderWidth: 5,
                color: const Color(0xff46A5BA),
                size: 25,
              ),
              endConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 0.5,
              ),
            ),
          ),
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: ListTile(
              title: Text(
                'Delivered Sucessfully',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                'Bishop\'s court Owerri ',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.check_box_outlined,
                color: Color(0xff46A5BA),
              ),
            ),
            node: TimelineNode(
              overlap: true,
              indicator: OutlinedDotIndicator(
                borderWidth: 5,
                color: const Color(0xff46A5BA),
                size: 25,
                backgroundColor: const Color.fromARGB(255, 3, 237, 225),
              ),
              startConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 2,
              ),
              endConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 0.5,
              ),
            ),
          ),
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: ListTile(
              title: Text(
                'Delivered Sucessfully',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                'Bishop\'s court Owerri ',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.check_box_outline_blank_outlined,
                color: Color(0xffD6D6D6),
              ),
            ),
            node: TimelineNode(
              indicator: OutlinedDotIndicator(
                color: Colors.grey,
                size: 25,
                borderWidth: 5,
              ),
              startConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 2,
              ),
              endConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 0.5,
              ),
            ),
          ),
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: ListTile(
              title: Text(
                'Delivered Sucessfully',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                'Bishop\'s court Owerri ',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.check_box_outline_blank_outlined,
                color: Color(0xffD6D6D6),
              ),
            ),
            node: TimelineNode(
              indicator: OutlinedDotIndicator(
                color: Colors.grey,
                size: 25,
                borderWidth: 5,
              ),
              startConnector: DashedLineConnector(
                color: const Color(0xffD6D6D6),
                thickness: 2,
                dash: 5,
                gapColor: Colors.white,
                gap: 2,
              ),
              // endConnector: DashedLineConnector(
              //   color: Colors.black,
              //   thickness: 2,
              //   dash: 5,
              //   gapColor: kPrimaryWhite,
              //   gap: 0.5,
              // ),
            ),
          )
        ],
      ),
    );
  }
}
