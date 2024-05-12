import 'package:flutter_gg/types.dart';

Style mixStyles(List<Style> styles) {
  Style result = Style();

  for (Style style in styles) {
    result = Style(
      p: style.p ?? result.p,
      px: style.px ?? result.px,
      py: style.py ?? result.py,
      pl: style.pl ?? result.pl,
      pr: style.pr ?? result.pr,
      pt: style.pt ?? result.pt,
      pb: style.pb ?? result.pb,
      m: style.m ?? result.m,
      mx: style.mx ?? result.mx,
      my: style.my ?? result.my,
      ml: style.ml ?? result.ml,
      mr: style.mr ?? result.mr,
      mt: style.mt ?? result.mt,
      mb: style.mb ?? result.mb,
      bg: style.bg ?? result.bg,
      borderRadius:
          style.borderRadius > 0 ? style.borderRadius : result.borderRadius,
      borderRadiusBottomLeft: style.borderRadiusBottomLeft > 0
          ? style.borderRadiusBottomLeft
          : result.borderRadiusBottomLeft,
      borderRadiusBottomRight: style.borderRadiusBottomRight > 0
          ? style.borderRadiusBottomRight
          : result.borderRadiusBottomRight,
      borderRadiusTopLeft: style.borderRadiusTopLeft > 0
          ? style.borderRadiusTopLeft
          : result.borderRadiusTopLeft,
      borderRadiusTopRight: style.borderRadiusTopRight > 0
          ? style.borderRadiusTopRight
          : result.borderRadiusTopRight,
      border: style.border ?? result.border,
      boxShadow: style.boxShadow ?? result.boxShadow,
      gradient: style.gradient ?? result.gradient,
      height: style.height ?? result.height,
      width: style.width ?? result.width,
      bottom: style.bottom ?? result.bottom,
      top: style.top ?? result.top,
      left: style.left ?? result.left,
      right: style.right ?? result.right,
      alignment: style.alignment ?? result.alignment,
      isCenter: style.isCenter ?? result.isCenter,
      isExpanded: style.isExpanded ?? result.isExpanded,
      textStyle: style.textStyle ?? result.textStyle,
      isRounded: style.isRounded ?? result.isRounded,
      activeColor: style.activeColor ?? result.activeColor,
      hoverColor: style.hoverColor ?? result.hoverColor,
      crossAxisAlignment: style.crossAxisAlignment,
      mainAxisAlignment: style.mainAxisAlignment,
      direction: style.direction,
      pressEffect: style.pressEffect ?? result.pressEffect,
    );
  }

  return result;
}
