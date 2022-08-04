import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../__lib.dart';

Widget iconButton({
  required String iconPath,
  required String label,
  double size = 40,
  required Function()? onTap,
  Color? labelColor,
}) {
  return InkWell(
    onTap: onTap,
    child: assetsImage(
      iconPath,
      width: eqW(size),
      height: eqH(size),
    ),
  );
}

Widget button({
  required onPressed,
  required Widget child,
  Color? bgColor,
  double? elevation,
  EdgeInsets? padding,
  OutlinedBorder? shape,
  double? borderRadius,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: child,
    style: ElevatedButton.styleFrom(
      shape: shape ??
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20.25)),
      primary: bgColor ?? AppColors.brandBlue,
      elevation: elevation ?? 0,
      padding: padding ?? pad(horiz: 40.5, vert: 13.5),
    ),
  );
}

Widget spanTextButton(
    {required List<TextSpan> textBlocks,
    Alignment? alignment,
    Function()? onTap}) {
  return Align(
    alignment: alignment ?? Alignment.topLeft,
    child: InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.poppins(color: AppColors.darkGrey, fontSize: 11),
          children: [
            ...List.generate(textBlocks.length, (i) => textBlocks[i]),
          ],
        ),
      ),
    ),
  );
}
