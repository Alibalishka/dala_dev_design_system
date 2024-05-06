import 'package:dala_dev_design_system/src/tokens/typography/tokens.g.dart';
import 'package:flutter/material.dart';

class DDTypography extends ThemeExtension<DDTypography> {
  final TextStyleTokens tokens;

  const DDTypography({required this.tokens});

  @override
  ThemeExtension<DDTypography> copyWith({TextStyleTokens? tokens}) {
    return DDTypography(tokens: tokens ?? this.tokens);
  }

  @override
  ThemeExtension<DDTypography> lerp(
    covariant ThemeExtension<DDTypography>? other,
    double t,
  ) {
    return this;
  }
}
