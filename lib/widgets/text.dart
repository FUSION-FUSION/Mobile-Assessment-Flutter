import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../__lib.dart';




Text text(
  text, {
  FontWeight? weight,
  double? size,
  Color? color,
  TextAlign? textAlign,
  int? maxLines,
  bool? softWrap
}) {
  return Text(
    
    '$text',
    
    softWrap: softWrap,
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: maxLines != null ? TextOverflow.ellipsis : null,
    style: GoogleFonts.lato(
      fontWeight: weight ?? FontWeight.w400,
      fontSize: size ?? 14,
      color: color ?? AppColors.defTextColor,
    ),
  );
}

Text hintText(
  text, {
  FontWeight weight = FontWeight.w500,
  double? size,
  Color? color,
  TextAlign? textAlign,
  int? maxLines,
}) {
  return Text(
    '$text',
    maxLines: maxLines,
    textAlign: textAlign,
    overflow: maxLines != null ? TextOverflow.ellipsis : null,
    style: GoogleFonts.poppins(
      fontWeight: weight,
      fontSize: size ?? 14,
      color: color ?? Colors.grey,
    ),
  );
}




