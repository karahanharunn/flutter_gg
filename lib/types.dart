import 'package:flutter/material.dart';

enum FlexDirection {
  row,
  column,
}

class Style {
  final double? px;
  final double? py;
  final double? pb;
  final double? pt;
  final double? pr;
  final double? pl;
  final double? p;
  final double? mx;
  final double? my;
  final double? mr;
  final double? ml;
  final double? mt;
  final double? mb;
  final double? m;
  final Color? bg;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final BoxShadow? boxShadow;
  final Gradient? gradient;
  final Border? border;
  final double borderRadius;
  final double borderRadiusTopLeft;
  final double borderRadiusTopRight;
  final double borderRadiusBottomLeft;
  final double borderRadiusBottomRight;
  final double? height;
  final double? width;
  final double? minWidth;
  final double? maxWidth;
  final double? minHeight;
  final double? maxHeight;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final FlexDirection? direction;
  final bool? isRounded;
  final bool? isCenter;
  final bool? isExpanded;
  final Alignment? alignment;
  final TextStyle? textStyle;
  final bool? pressEffect;
  final Color? hoverColor;
  final Color? activeColor;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? opacity;

  Style(
      {this.px,
      this.py,
      this.pb,
      this.pt,
      this.pl,
      this.pr,
      this.p,
      this.m,
      this.mx,
      this.my,
      this.mr,
      this.ml,
      this.mt,
      this.mb,
      this.bg,
      this.left,
      this.right,
      this.top,
      this.bottom,
      this.boxShadow,
      this.gradient,
      this.border,
      this.borderRadius = 0.0,
      this.borderRadiusTopLeft = 0.0,
      this.borderRadiusTopRight = 0.0,
      this.borderRadiusBottomLeft = 0.0,
      this.borderRadiusBottomRight = 0.0,
      this.height,
      this.width,
      this.minWidth,
      this.maxWidth,
      this.minHeight,
      this.maxHeight,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.direction,
      this.isRounded,
      this.isCenter,
      this.isExpanded,
      this.alignment,
      this.textStyle,
      this.pressEffect,
      this.hoverColor,
      this.activeColor,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.letterSpacing,
      this.opacity});
}

class SpaceProps {
  final double? l;
  final double? r;
  final double? t;
  final double? b;

  SpaceProps({this.l = 0, this.r = 0, this.t = 0, this.b = 0});
}
