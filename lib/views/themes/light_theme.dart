import 'package:flutter/material.dart';

import 'package:mobile_assessment_flutter/views/themes/app_theme.dart';

class LightTheme extends AppTheme {
  LightTheme()
      : super(
          primaryColor: const Color(0xFF46A5BA),
          primaryTextColor: const Color(0xFF1F1F1F),
          darkBackgroundColor: const Color(0xFF040405),
          grayTextColor: const Color(0xFF484848),
          backgroundGradient: const LinearGradient(
            colors: [Color(0xFFDBE4E9), Color(0xFFF0F0F3)],
          ),
        );
}
