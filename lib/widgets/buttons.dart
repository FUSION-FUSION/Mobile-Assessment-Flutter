import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../__lib.dart';

Widget iconButton({
  required String iconPath,
  double? width, double? height,
  double size = 24,
 Function()? onTap,
 
}) {
  return InkWell(
    onTap: onTap,
    child: assetsImage(
      iconPath,
      width: eqW(width??size),
      height: eqH(height??size),
    ),
  );
}

Widget button(
    {required onPressed,
    required Widget child,
    Color? bgColor,
    double? elevation,
    EdgeInsets? padding,
    OutlinedBorder? shape,
    double? borderRadius,
    Color? shadowColor}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: child,
    style: ElevatedButton.styleFrom(
      shape: shape ??
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 20.25)),
      primary: bgColor ?? AppColors.brandBlue,
      elevation: elevation ?? 0,
      shadowColor: shadowColor ?? AppColors.brandBlue.withOpacity(.4),
      padding: padding ?? pad(horiz: 40.5, vert: 13.5),
    ),
  );
}

Widget spanTextButton(
    {required List<TextSpan> textBlocks,
    Alignment? alignment,
    double size = 16,
    Function()? onTap}) {
  return Align(
    alignment: alignment ?? Alignment.topLeft,
    child: InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.poppins(
              color: AppColors.darkGrey,
              fontSize: size / 1.3,
              fontWeight: FontWeight.w300),
          children: [
            ...List.generate(textBlocks.length, (i) => textBlocks[i]),
          ],
        ),
      ),
    ),
  );
}
