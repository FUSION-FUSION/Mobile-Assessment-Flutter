import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';

class ThemedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  
  const ThemedAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.current(context);

    return Container(
      color: theme.backgroundColor,
      padding: const EdgeInsets.all(10),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/menu.png', width: 25,),
              theme.text(
                title,
                color: theme.primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              Image.asset('assets/ic-notification.png', width: 25,),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}