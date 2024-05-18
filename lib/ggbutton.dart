import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';

Widget ggbutton(
    {required Style style,
    String text = "",
    List<Widget> children = const [],
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
    double gap = 8}) {
  Widget widget;

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

  if (children.isNotEmpty) {
    widget = flexManager(props: style, children: children);
  } else {
    widget = iconManager(
        style, leftChild, rightChild, gap, text, topChild, bottomChild);
  }
  return runManagerList(
      style: style, widgetOld: widget, onTap: onTap, props: props);
}
