import 'package:dala_dev_design_system/src/tokens/dimensions/tokens.g.dart';
import 'package:flutter/material.dart';

class DDDimensions extends ThemeExtension<DDDimensions> {
  final SizeTokens tokens;

  const DDDimensions({required this.tokens});

  @override
  ThemeExtension<DDDimensions> copyWith({SizeTokens? tokens}) {
    return DDDimensions(tokens: tokens ?? this.tokens);
  }

  @override
  ThemeExtension<DDDimensions> lerp(
    covariant ThemeExtension<DDDimensions>? other,
    double t,
  ) {
    return this;
  }
}
