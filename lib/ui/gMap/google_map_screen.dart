import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/track_panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  static const _initialCamPos = CameraPosition(target: LatLng(11.9883259, 8.4820171),
    zoom: 16,
  );
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SlidingUpPanel(
        color: Colors.transparent,
        backdropColor: Colors.transparent,
        body:
        Stack(
          children:[ const GoogleMap(
            initialCameraPosition: _initialCamPos,
            zoomControlsEnabled: false,
          ),
            SafeArea(
              child:
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.0.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40.0.h,
                          width: 40.0.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(13.0.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.01,
                                offset: const Offset(0.5, 0.5),
                                blurRadius: 0.05
                              ),
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(-0.5, -0.5),
                                  blurRadius: 0.05
                              ),
                            ],

                          ),
                          child: InkWell(
                            onTap: Navigator.of(context).pop,
                            child: const
                            Center(
                              child: Icon(
                                Icons.arrow_back
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0,),
                        Container(
                          height: 40.0.h,
                          width: 250.0.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13.0.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(0.5, 0.5),
                                  blurRadius: 0.05
                              ),
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(-0.5, -0.5),
                                  blurRadius: 0.05
                              ),
                            ],
                          ),
                          child:
                          Center(child:
                          TextFormField(
                            initialValue: "HH-INT-D9FD00-JBW-ORI",
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 40.0),
                             hintText: "HH-INT-D9FD00-JBW-ORI",
                              border: InputBorder.none,
                              hintStyle:GoogleFonts.inter(color: Colors.black54,),
                            ),
                            keyboardType: TextInputType.text,
                            style: GoogleFonts.inter(color: Colors.black,),
                            onChanged: (value){
                            },

                          )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
        ]
        ),
        panelBuilder: (controller) => TrackPanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}





