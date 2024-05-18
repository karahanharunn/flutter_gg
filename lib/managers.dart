// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_gg/methods.dart';
import 'package:flutter_gg/types.dart';
import 'package:flutter_gg/types/ButtonProps.dart';

Widget flexManager({required Style props, required List<Widget> children}) {
  if (children.length > 1 || props.direction != null) {
    return flex(children, props);
  }
  return children[0];
}

Widget sizeManager({required Style style, required Widget widget}) {
  if (style.height != null || style.width != null) {
    return size(widget, style.height, style.width);
  }
  return widget;
}

Widget positionManager({required Style style, required Widget widget}) {
  if (style.left != null ||
      style.right != null ||
      style.top != null ||
      style.bottom != null) {
    return position(widget, style.left, style.right, style.top, style.bottom);
  }
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
  if (isPaddingExist) return padding(widget, style);
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
  if (isPaddingExist) return margin(widget, style);
  return widget;
}

Widget decorationManager({required Style style, required Widget widget}) {
  bool isDecorationExist = style.border != null ||
      style.bg != null ||
      style.isRounded != null ||
      style.gradient != null ||
      style.boxShadow != null;
  if (isDecorationExist) return decoration(widget, style);
  return widget;
}

Widget clickManager(
    {required Style style,
    required Widget widget,
    onTap,
    ButtonProps props = const ButtonProps()}) {
  if (onTap != null) return click(widget, onTap, style, props);
  return widget;
}

Widget alignManager({required Style style, required Widget widget}) {
  if (style.alignment != null) return align(widget, style.alignment!);
  return widget;
}

Widget centerManager({required Style style, required Widget widget}) {
  if (style.isCenter == true) return center(widget);
  return widget;
}

Widget expandManager({required Style style, required Widget widget}) {
  if (style.isExpanded == true) return expanded(widget);
  return widget;
}

Widget runManagerList(
    {required Style style,
    required Widget widgetOld,
    onTap,
    props = const ButtonProps()}) {
  Widget widget = paddingManager(style: style, widget: widgetOld);
  widget = sizeManager(style: style, widget: widget);
  widget = positionManager(style: style, widget: widget);
  widget = decorationManager(style: style, widget: widget);
  widget =
      clickManager(style: style, widget: widget, onTap: onTap, props: props);
  widget = marginManager(style: style, widget: widget);
  widget = centerManager(style: style, widget: widget);
  widget = expandManager(style: style, widget: widget);
  widget = alignManager(style: style, widget: widget);
  return widget;
}
