import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/design_system/core/theme/ds_theme.dart';

class DSText extends StatelessWidget {
  const DSText(this.text, { this.style, this.textAlign, super.key});
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final theme = DSTheme.getDesignTokensOf(context);
    return Text(
      text,
      style: style ?? TextStyle(
        fontSize: theme.font.size.xs,
        fontWeight: theme.font.weight.regular,
        color: theme.colors.white,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
