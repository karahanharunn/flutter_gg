import 'package:flutter/material.dart';
import 'package:flutter_gg/managers.dart';
import 'package:flutter_gg/types.dart';

Widget gg(
    {Style? style, List<Widget> children = const [SizedBox.shrink()], onTap}) {
  Style styleProps = style ?? Style();
  Widget widget = flexManager(props: styleProps, children: children);
  widget = paddingManager(style: styleProps, widget: widget);
  widget = sizeManager(style: styleProps, widget: widget);
  widget = positionManager(style: styleProps, widget: widget);
  widget = decorationManager(style: styleProps, widget: widget);
  widget = clickManager(style: styleProps, widget: widget, onTap: onTap);
  widget = marginManager(style: styleProps, widget: widget);
  widget = centerManager(style: styleProps, widget: widget);
  widget = expandManager(style: styleProps, widget: widget);
  widget = alignManager(style: styleProps, widget: widget);
  return widget;
}
