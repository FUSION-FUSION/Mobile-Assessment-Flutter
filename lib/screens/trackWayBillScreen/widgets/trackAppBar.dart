import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widget/appButton.dart';

class TrackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final String text;
  const TrackAppBar({Key? key, required this.context, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppButton(
              child: Icon(
                Icons.arrow_back,
                color: formTextColor,
                size: 20,
              ),
              color: normalWhite,
              radius: 17,
              width: 46,
              height: 44),
          Container(
            width: 288,
            height: 37,
            decoration: BoxDecoration(
                color: normalWhite, borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: formTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox()
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(MediaQuery.of(context).size.width, 80);
}
