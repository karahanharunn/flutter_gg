import 'package:flutter/material.dart';
import 'package:flutter_gg/managers.dart';
import 'package:flutter_gg/types.dart';
import 'package:flutter_gg/types/ButtonProps.dart';

Widget ggbutton(
    {required Style style,
    String text = "",
    Widget? leftChild,
    Widget? rightChild,
    Widget? topChild,
    Widget? bottomChild,
    void Function()? onTap,
    void Function()? onDoubleTap,
    void Function()? onLongPress,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function()? onSecondaryTapCancel,
    void Function(bool)? onHighlightChanged,
    void Function(bool)? onHover,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    MaterialStateProperty<Color?>? overlayColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    void Function(bool)? onFocusChange,
    bool autofocus = false,
    MaterialStatesController? statesController,
    Duration? hoverDuration,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    double gap = 8}) {
  Widget widget = Text(text, style: style.textStyle);
  List<Widget> children = [];

  ButtonProps props = ButtonProps(
    onDoubleTap: onDoubleTap,
    onLongPress: onLongPress,
    autofocus: autofocus,
    borderRadius: borderRadius,
    canRequestFocus: canRequestFocus,
    customBorder: customBorder,
    excludeFromSemantics: excludeFromSemantics,
    focusColor: focusColor,
    focusNode: focusNode,
    hoverColor: hoverColor,
    radius: radius,
    splashColor: splashColor,
    splashFactory: splashFactory,
    mouseCursor: mouseCursor,
    highlightColor: highlightColor,
    statesController: statesController,
    onHighlightChanged: onHighlightChanged,
    onHover: onHover,
    onTapCancel: onTapCancel,
    onTapDown: onTapDown,
    onTapUp: onTapUp,
    onSecondaryTap: onSecondaryTap,
    onSecondaryTapCancel: onSecondaryTapCancel,
    onSecondaryTapDown: onSecondaryTapDown,
    onSecondaryTapUp: onSecondaryTapUp,
    onFocusChange: onFocusChange,
    hoverDuration: hoverDuration,
    overlayColor: overlayColor,
  );

  widget = iconManager(style, leftChild, rightChild, children, gap, widget,
      mainAxisAlignment, crossAxisAlignment, topChild, bottomChild);

  widget = paddingManager(style: style, widget: widget);
  widget = expandManager(style: style, widget: widget);
  widget = sizeManager(style: style, widget: widget);
  widget = positionManager(style: style, widget: widget);
  widget = decorationManager(style: style, widget: widget);
  widget =
      clickManager(style: style, widget: widget, onTap: onTap, props: props);
  widget = alignManager(style: style, widget: widget);
  widget = marginManager(style: style, widget: widget);
  widget = centerManager(style: style, widget: widget);
  return widget;
}

Widget iconManager(
    Style style,
    Widget? leftChild,
    Widget? rightChild,
    List<Widget> children,
    double gap,
    Widget widget,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
    Widget? topChild,
    Widget? bottomChild) {
  if (leftChild != null || rightChild != null) {
    if (leftChild != null) {
      children.add(leftChild);
      children.add(SizedBox(width: gap));
    }
    children.add(widget);
    if (rightChild != null) {
      children.add(SizedBox(width: gap));
      children.add(rightChild);
    }
    widget = Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children);
  } else if (topChild != null || bottomChild != null) {
    if (topChild != null) {
      children.add(topChild);
      children.add(SizedBox(height: gap));
    }
    children.add(widget);
    if (bottomChild != null) {
      children.add(SizedBox(height: gap));
      children.add(bottomChild);
    }
    widget = Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children);
  } else
    widget = flexManager(props: style, children: children);

  return widget;
}
