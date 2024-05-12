import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';

Widget ggtext(
    {Style? style,
    String text = "",
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextAlign? textAlign,
    Color? selectionColor,
    TextDirection? textDirection,
    StrutStyle? strutStyle,
    TextScaler? textScaler}) {
  Style styleProps = style ?? Style();
  Widget widget = Text(
    text,
    style: styleProps.textStyle,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    textWidthBasis: textWidthBasis,
    textAlign: textAlign,
    selectionColor: selectionColor,
    textDirection: textDirection,
    strutStyle: strutStyle,
    textScaler: textScaler,
  );

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
