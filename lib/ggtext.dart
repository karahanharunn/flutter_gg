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
  return runManagerList(style: styleProps, widgetOld: widget);
}
