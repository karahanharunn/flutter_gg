// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';
import 'package:flutter_gg/utils/prepareTextWidget.dart';

Widget padding(Widget widget, Style style) {
  double r = (style.p ?? 0) + (style.px ?? 0) + (style.pr ?? 0);
  double l = (style.p ?? 0) + (style.px ?? 0) + (style.pl ?? 0);
  double t = (style.p ?? 0) + (style.py ?? 0) + (style.pt ?? 0);
  double b = (style.p ?? 0) + (style.py ?? 0) + (style.pb ?? 0);
  return Container(padding: EdgeInsets.fromLTRB(l, t, r, b), child: widget);
}

Widget margin(Widget widget, Style space) {
  double r = (space.m ?? 0) + (space.mx ?? 0) + (space.mr ?? 0);
  double l = (space.m ?? 0) + (space.mx ?? 0) + (space.ml ?? 0);
  double t = (space.m ?? 0) + (space.my ?? 0) + (space.mt ?? 0);
  double b = (space.m ?? 0) + (space.my ?? 0) + (space.mb ?? 0);
  return Container(
    margin: EdgeInsets.fromLTRB(l, t, r, b),
    child: widget,
  );
}

Widget align(Widget widget, Alignment alignment) {
  return Align(alignment: alignment, child: widget);
}

Widget center(Widget widget) {
  return Center(child: widget);
}

Widget expanded(Widget widget) {
  return Expanded(child: widget);
}

Widget decoration(Widget widget, Style props) {
  BoxDecoration decoration = BoxDecoration();
  bool isRadiusExist = props.borderRadius > 0 ||
      props.borderRadiusTopLeft > 0 ||
      props.borderRadiusTopRight > 0 ||
      props.borderRadiusBottomLeft > 0 ||
      props.borderRadiusBottomRight > 0;

  if (props.isRounded == true)
    decoration = decoration.copyWith(shape: BoxShape.circle);
  else if (isRadiusExist) {
    decoration = decoration.copyWith(
        borderRadius: BorderRadius.only(
            bottomLeft: props.borderRadiusBottomLeft > 0
                ? Radius.circular(props.borderRadiusBottomLeft)
                : Radius.circular(props.borderRadius),
            bottomRight: props.borderRadiusBottomRight > 0
                ? Radius.circular(props.borderRadiusBottomRight)
                : Radius.circular(props.borderRadius),
            topLeft: props.borderRadiusTopLeft > 0
                ? Radius.circular(props.borderRadiusTopLeft)
                : Radius.circular(props.borderRadius),
            topRight: props.borderRadiusTopRight > 0
                ? Radius.circular(props.borderRadiusTopRight)
                : Radius.circular(props.borderRadius)));
  }
  if (props.bg != null) decoration = decoration.copyWith(color: props.bg);
  if (props.boxShadow != null)
    decoration = decoration.copyWith(boxShadow: [props.boxShadow!]);
  if (props.gradient != null)
    decoration = decoration.copyWith(gradient: props.gradient);
  if (props.border != null) {
    decoration = decoration.copyWith(
      border: props.border,
    );
  }

  if (props.pressEffect == false)
    return Container(decoration: decoration, child: widget);

  return Ink(decoration: decoration, child: widget);
}

Widget size(Widget widget, double? height, double? width) {
  if (width != null && height != null) {
    return SizedBox(width: width, height: height, child: widget);
  }
  if (width != null) {
    return SizedBox(width: width, child: widget);
  }
  if (height != null) {
    return SizedBox(height: height, child: widget);
  }
  return widget;
}

Widget position(
    Widget widget, double? left, double? right, double? top, double? bottom) {
  return Positioned(
    left: left,
    right: right,
    top: top,
    bottom: bottom,
    child: widget,
  );
}

Widget flex(List<Widget> children, Style props) {
  return Flex(
    children: children,
    direction:
        props.direction == FlexDirection.row ? Axis.horizontal : Axis.vertical,
    crossAxisAlignment: props.crossAxisAlignment ?? CrossAxisAlignment.start,
    mainAxisAlignment: props.mainAxisAlignment ?? MainAxisAlignment.start,
  );
}

Widget rounded(Widget widget) {
  return ClipRRect(borderRadius: BorderRadius.circular(100), child: widget);
}

Widget click(Widget widget, onClick, Style style, ButtonProps props) {
  return InkWell(
    onTap: onClick,
    autofocus: props.autofocus,
    borderRadius: props.borderRadius,
    enableFeedback: props.enableFeedback,
    excludeFromSemantics: props.excludeFromSemantics,
    focusColor: props.focusColor,
    focusNode: props.focusNode,
    hoverColor: style.hoverColor ?? props.hoverColor,
    radius: props.radius,
    splashColor: props.splashColor,
    customBorder: props.customBorder ??
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(style.borderRadius),
        ),
    mouseCursor: props.mouseCursor,
    canRequestFocus: props.canRequestFocus,
    highlightColor: style.activeColor ?? props.highlightColor,
    splashFactory: props.splashFactory,
    statesController: props.statesController,
    onDoubleTap: props.onDoubleTap,
    onHighlightChanged: props.onHighlightChanged,
    onHover: props.onHover,
    onLongPress: props.onLongPress,
    onTapCancel: props.onTapCancel,
    onTapDown: props.onTapDown,
    onTapUp: props.onTapUp,
    onSecondaryTap: props.onSecondaryTap,
    onFocusChange: props.onFocusChange,
    onSecondaryTapDown: props.onSecondaryTapDown,
    onSecondaryTapUp: props.onSecondaryTapUp,
    onSecondaryTapCancel: props.onSecondaryTapCancel,
    child: widget,
  );
}

Widget iconManager(Style style, Widget? leftChild, Widget? rightChild,
    double gap, String text, Widget? topChild, Widget? bottomChild) {
  List<Widget> children = [];

  Widget widget = prepareTextWidget(style, text);

  if (leftChild != null || rightChild != null) {
    if (leftChild != null) {
      children.add(leftChild);
      if (text != "") {
        children.add(SizedBox(width: gap));
        children.add(widget);
      }
    }
    if (rightChild != null) {
      if (text != "") {
        children.add(widget);
        children.add(SizedBox(width: gap));
      }
      children.add(rightChild);
    }
    return Row(
        mainAxisAlignment: style.mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment:
            style.crossAxisAlignment ?? CrossAxisAlignment.center,
        children: children);
  }

  if (topChild != null || bottomChild != null) {
    if (topChild != null) {
      children.add(topChild);
      if (text != "") {
        children.add(SizedBox(height: gap));
        children.add(widget);
      }
    }
    if (bottomChild != null) {
      if (text != "") {
        children.add(widget);
        children.add(SizedBox(height: gap));
      }
      children.add(bottomChild);
    }
    return Column(
        mainAxisAlignment: style.mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment:
            style.crossAxisAlignment ?? CrossAxisAlignment.center,
        children: children);
  }

  return Row(
      mainAxisAlignment: style.mainAxisAlignment ?? MainAxisAlignment.center,
      crossAxisAlignment: style.crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [widget]);
}
