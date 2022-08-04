import 'package:flutter/material.dart';

import '../__lib.dart';

Widget col({
  List<Widget> children = const <Widget>[],
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
Widget exCol({
  List<Widget> children = const <Widget>[],
}) =>
    Expanded(
      child: col(children: children),
    );
Widget outlinedBox(
        {Color outlineColor = const Color(0xFFE1E1E3),
        required Widget child}) =>
    Container(
      padding: pad(both: 8),
      margin: pad(both: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: outlineColor,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: child,
    );

Widget scrollingExpanded({required Widget child}) {
  return LayoutBuilder(
    builder: (context, constraints) => SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: IntrinsicHeight(
          child: child,
        ),
      ),
    ),
  );
}
Widget customFormContainer({required Widget child,  bool? isReverse, Alignment? alignment, Color? bgColor,  }) {
  return SafeArea(
      child: OrientationBuilder(
        builder: (_, orientation) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            
            reverse: isReverse??false,
            child: Align(
              alignment: alignment ?? Alignment.center,
              child: Container(
                color: bgColor,
                child: child,
              ),
            ),
          );
        },
      ),
    );
}
