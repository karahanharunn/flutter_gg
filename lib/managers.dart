// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_gg/methods.dart';
import 'package:flutter_gg/types.dart';
import 'package:flutter_gg/types/ButtonProps.dart';

Widget flexManager({required Style props, required List<Widget> children}) {
  return (children.length > 1 || props.direction != null)
      ? flex(style: props, children: children)
      : children[0];
}

Widget sizeManager({required Style style, required Widget widget}) {
  if (style.height != null || style.width != null)
    widget = size(widget, style.height, style.width);
  return widget;
}

Widget positionManager({required Style style, required Widget widget}) {
  if (style.left != null ||
      style.right != null ||
      style.top != null ||
      style.bottom != null)
    widget = position(widget, style.left, style.right, style.top, style.bottom);
  return widget;
}

Widget paddingManager({required Style style, required Widget widget}) {
  bool isPaddingExist = style.px != null ||
      style.py != null ||
      style.pb != null ||
      style.pt != null ||
      style.pr != null ||
      style.pl != null ||
      style.p != null;
  if (isPaddingExist) widget = padding(widget, style);
  return widget;
}

Widget marginManager({required Style style, required Widget widget}) {
  bool isPaddingExist = style.mx != null ||
      style.my != null ||
      style.mb != null ||
      style.mt != null ||
      style.mr != null ||
      style.ml != null ||
      style.m != null;
  if (isPaddingExist) widget = margin(widget, style);
  return widget;
}

Widget decorationManager({required Style style, required Widget widget}) {
  bool isDecorationExist = style.border != null ||
      style.bg != null ||
      style.isRounded != null ||
      style.gradient != null ||
      style.boxShadow != null;
  if (isDecorationExist) widget = decoration(widget, style);
  return widget;
}

Widget clickManager(
    {required Style style,
    required Widget widget,
    onTap,
    ButtonProps props = const ButtonProps()}) {
  if (onTap != null) widget = click(widget, onTap, style, props);
  return widget;
}

Widget alignManager({required Style style, required Widget widget}) {
  if (style.alignment != null) widget = align(widget, style.alignment!);
  return widget;
}

Widget centerManager({required Style style, required Widget widget}) {
  if (style.isCenter == true) widget = center(widget);
  return widget;
}

Widget expandManager({required Style style, required Widget widget}) {
  if (style.isExpanded == true) widget = expanded(widget);
  return widget;
}
