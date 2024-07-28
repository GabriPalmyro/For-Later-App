
import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/design_system/core/base/base.dart';
import 'package:for_later_app/app/common/design_system/core/tokens/design.dart';

abstract class DSThemeData {
  DSThemeData({
    required this.designTokens,
    required this.name,
  });

  final DSTokens designTokens;
  final String name;
}

class DSThemeAppData implements DSThemeData {
  @override
  DSTokens get designTokens => BaseDSDesignToken();

  @override
  String get name => 'base';
}

typedef DSThemeChangeCallback = Function(DSThemeData);

class DSTheme extends InheritedWidget {
  const DSTheme({
    required super.child,
    required this.data,
    this.changeCallback,
    super.key,
  });

  final DSThemeData data;
  final DSThemeChangeCallback? changeCallback;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    if (oldWidget is DSTheme) {
      return oldWidget.data != data;
    }
    return false;
  }

  static void changeOwnThemeData(BuildContext context, DSThemeData data) {
    final DSTheme? result = context.dependOnInheritedWidgetOfExactType<DSTheme>();
    if (result?.changeCallback case final callback?) {
      callback(data);
    }
  }

  static DSTokens getDesignTokensOf(BuildContext context) {
    final DSTheme? result = context.dependOnInheritedWidgetOfExactType<DSTheme>();
    assert(result != null, 'No OwnTheme found in context');
    return result!.data.designTokens;
  }
}
