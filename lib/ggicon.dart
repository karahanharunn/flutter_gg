import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';

Widget ggicon(IconData? icon,
    {Style? style,
    Key? key,
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
    String? semanticLabel,
    TextDirection? textDirection}) {
  Widget widget = Icon(
    icon,
    color: color,
    size: size,
    fill: fill,
    weight: weight,
    grade: grade,
    opticalSize: opticalSize,
    shadows: shadows,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  );

  Style styleProps = style ?? Style();
  widget = flexManager(props: styleProps, children: [widget]);
  widget = paddingManager(style: styleProps, widget: widget);
  widget = expandManager(style: styleProps, widget: widget);
  widget = sizeManager(style: styleProps, widget: widget);
  widget = positionManager(style: styleProps, widget: widget);
  widget = decorationManager(style: styleProps, widget: widget);
  widget = alignManager(style: styleProps, widget: widget);
  widget = marginManager(style: styleProps, widget: widget);
  widget = centerManager(style: styleProps, widget: widget);
  return widget;
}
