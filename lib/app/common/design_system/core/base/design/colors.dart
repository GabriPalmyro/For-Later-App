import 'dart:ui';

import 'package:for_later_app/app/common/design_system/core/tokens/design/colors.dart';

class BaseDSThemeColor implements DSThemeColor {
  BaseDSThemeColor({
    Color? primary,
    Color? secondary,
    Color? white,
    Color? grey,
    Color? error,
    Color? brightSecondary,
    Color? background,
  }) {
    this.primary = primary ?? this.primary;
    this.secondary = secondary ?? this.secondary;
    this.white = white ?? this.white;
    this.grey = grey ?? this.grey;
    this.error = error ?? this.error;
    this.brightSecondary = brightSecondary ?? this.brightSecondary;
    this.background = background ?? this.background;
  }

  @override
  Color error = const Color(0xFFE03140);

  @override
  Color white = const Color(0xFFFFFFFF);

  @override
  Color grey = const Color(0xFF042534);

  @override
  Color primary = const Color(0xFF10accc);

  @override
  Color secondary = const Color(0xFFffd800);

  @override
  Color brightSecondary = const Color(0xFF6BF0DF);

  @override
  Color background = const Color(0xFFDDD7AC);
}
