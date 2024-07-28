
import 'package:for_later_app/app/common/design_system/core/base/design/borders.dart';
import 'package:for_later_app/app/common/design_system/core/base/design/colors.dart';
import 'package:for_later_app/app/common/design_system/core/base/design/font.dart';
import 'package:for_later_app/app/common/design_system/core/base/design/spacing.dart';
import 'package:for_later_app/app/common/design_system/core/theme/ds_theme.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design/borders.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design/colors.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design/font.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design/spacing.dart';

class BaseDSDesignToken implements DSTokens {
  @override
  final DSThemeColor colors = BaseDSThemeColor();

  @override
  final DSThemeFont font = BaseDSThemeFont();

  @override
  DSBorderWidth get borderWidth => BaseDSThemeBorderWidth();

  @override
  DSBorder get borders => BaseDSThemeBorder();

  @override
  DSThemeSpacing get spacing => BaseDSThemeSpacing();
}

class BaseOwnThemeData implements DSThemeData {
  @override
  DSTokens get designTokens => BaseDSDesignToken();

  @override
  String get name => 'base';
  
}