import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_scaffold.dart';

class BaseAuthenticationScreen extends StatelessWidget {
  static const route = '/auth';

  final Widget child;
  final String title;
  final String? subTitle;
  final RichText? subTitleWidget;

  const BaseAuthenticationScreen({
    Key? key,
    required this.child,
    required this.title,
    this.subTitle,
    this.subTitleWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert (subTitle != null || subTitleWidget != null, "A subtitle is required");

    final theme = ThemeProvider.current(context);

    return AppScaffold(
      child: Stack(
        children: [
          Hero(child: Image.asset('assets/bg-app-cloud.png'), tag: 'bg',),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  theme.text(
                    title,
                    color: theme.grayTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  if (subTitleWidget != null) subTitleWidget!,
                  if (subTitleWidget == null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: theme.text(
                        subTitle!,
                        color: theme.grayTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
