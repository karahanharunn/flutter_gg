import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';

Widget prepareTextWidget(Style style, String text) {
  Widget widget = Text(text,
      style: (style.textStyle ?? new TextStyle()).copyWith(
          color: style.color,
          fontSize: style.fontSize,
          fontWeight: style.fontWeight,
          fontStyle: style.fontStyle,
          letterSpacing: style.letterSpacing));
  return widget;
}
