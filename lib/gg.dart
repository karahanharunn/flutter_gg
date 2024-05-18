import 'package:flutter/material.dart';
import 'package:flutter_gg/managers.dart';
import 'package:flutter_gg/types.dart';

Widget gg(
    {Style? style, List<Widget> children = const [SizedBox.shrink()], onTap}) {
  Style styleProps = style ?? Style();
  Widget widget = flexManager(
      props: styleProps,
      children: children.isEmpty ? [SizedBox.shrink()] : children);
  return runManagerList(style: styleProps, widgetOld: widget, onTap: onTap);
}
