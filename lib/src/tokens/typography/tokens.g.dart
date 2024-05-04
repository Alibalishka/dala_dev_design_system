/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
/// Figma2Flutter
/// *****************************************************

library tokens;

import 'package:flutter/material.dart';

part 'tokens_extra.g.dart';

abstract class ITokens {
  TextStyleTokens get textStyle;
}

abstract class TextStyleTokens {
  TextStyle get mobileFontDisplayS;
  TextStyle get mobileFontDisplayM;
  TextStyle get mobileFontDisplayL;
  TextStyle get mobileFontHeadingH1;
  TextStyle get mobileFontHeadingH2;
  TextStyle get mobileFontHeadingH3;
  TextStyle get mobileFontHeadingH4;
  TextStyle get mobileFontBodyXl;
  TextStyle get mobileFontBodyXlStrong;
  TextStyle get mobileFontBodyL;
  TextStyle get mobileFontBodyLStrong;
  TextStyle get mobileFontBodyM;
  TextStyle get mobileFontBodyMStrong;
  TextStyle get mobileFontBodyS;
  TextStyle get mobileFontBodySStrong;
  TextStyle get mobileFontBodyXs;
  TextStyle get mobileFontBodyXsStrong;
}

class DefaultTokens extends ITokens {
  @override
  TextStyleTokens get textStyle => DefaultTextStyleTokens();
}

class DefaultTextStyleTokens extends TextStyleTokens {
  @override
  TextStyle get mobileFontDisplayS => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 32.0,
  fontWeight: FontWeight.w800,
  height: 1.25,
);
  @override
  TextStyle get mobileFontDisplayM => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 48.0,
  fontWeight: FontWeight.w800,
  height: 1.1666666666666667,
);
  @override
  TextStyle get mobileFontDisplayL => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 56.0,
  fontWeight: FontWeight.w800,
  height: 1.0,
);
  @override
  TextStyle get mobileFontHeadingH1 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 26.0,
  fontWeight: FontWeight.w800,
  height: 1.2307692307692308,
);
  @override
  TextStyle get mobileFontHeadingH2 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontHeadingH3 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w800,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontHeadingH4 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  height: 1.5,
);
  @override
  TextStyle get mobileFontBodyXl => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontBodyXlStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontBodyL => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  height: 1.5,
);
  @override
  TextStyle get mobileFontBodyLStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
  height: 1.5,
);
  @override
  TextStyle get mobileFontBodyM => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  height: 1.4285714285714286,
);
  @override
  TextStyle get mobileFontBodyMStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
  height: 1.4285714285714286,
);
  @override
  TextStyle get mobileFontBodyS => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontBodySStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 12.0,
  fontWeight: FontWeight.w700,
  height: 1.3333333333333333,
);
  @override
  TextStyle get mobileFontBodyXs => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 10.0,
  fontWeight: FontWeight.w500,
  height: 1.4,
);
  @override
  TextStyle get mobileFontBodyXsStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 10.0,
  fontWeight: FontWeight.w700,
  height: 1.4,
);
}
