import 'package:flutter/material.dart';

import '../__lib.dart';

SizedBox verticalSpace({double height = 16}) {
  return SizedBox(
    height: eqH(height),
  );
}

SizedBox horizontalSpace({double width = 16}) {
  return SizedBox(
    width: eqW(width),
  );
}
