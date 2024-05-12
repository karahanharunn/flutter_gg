import 'package:flutter/material.dart';
import 'package:flutter_gg/gg.dart';
import 'package:flutter_gg/types.dart';

export 'package:flutter_gg/methods.dart';
export 'package:flutter_gg/managers.dart';
export 'package:flutter_gg/types.dart';
export 'package:flutter_gg/mix.dart';
export 'package:flutter_gg/gg.dart';
export 'package:flutter_gg/ggbutton.dart';
export 'package:flutter_gg/ggtext.dart';
export 'package:flutter_gg/types/ButtonProps.dart';
export 'package:flutter_gg/ggicon.dart';

extension StyleExtension on Widget {
  Widget styles(Style style) => gg(
        style: style,
        children: [this],
      );
}
