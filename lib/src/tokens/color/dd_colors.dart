import 'package:dala_dev_design_system/src/tokens/color/tokens.g.dart';
import 'package:flutter/material.dart';

class DDColors extends ThemeExtension<DDColors> {
  final ColorTokens tokens;

  const DDColors({required this.tokens});

  @override
  ThemeExtension<DDColors> copyWith({ColorTokens? tokens}) {
    return DDColors(tokens: tokens ?? this.tokens);
  }

  @override
  ThemeExtension<DDColors> lerp(
    covariant ThemeExtension<DDColors>? other,
    double t,
  ) {
    return this;
  }
}
