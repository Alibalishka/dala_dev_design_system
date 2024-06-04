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
  TextStyle get fontDisplayS;
  TextStyle get fontDisplayM;
  TextStyle get fontDisplayL;
  TextStyle get fontHeadingH1;
  TextStyle get fontHeadingH2;
  TextStyle get fontHeadingH3;
  TextStyle get fontHeadingH4;
  TextStyle get fontBodyXl;
  TextStyle get fontBodyXlStrong;
  TextStyle get fontBodyL;
  TextStyle get fontBodyLStrong;
  TextStyle get fontBodyM;
  TextStyle get fontBodyMStrong;
  TextStyle get fontBodyS;
  TextStyle get fontBodySStrong;
  TextStyle get fontBodyXs;
  TextStyle get fontBodyXsStrong;
}

class DefaultTokens extends ITokens {
  @override
  TextStyleTokens get textStyle => DefaultTextStyleTokens();
}

class DefaultTextStyleTokens extends TextStyleTokens {
  @override
  TextStyle get fontDisplayS => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 32.0,
  fontWeight: FontWeight.w800,
  height: 1.25,
);
  @override
  TextStyle get fontDisplayM => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 48.0,
  fontWeight: FontWeight.w800,
  height: 1.1666666666666667,
);
  @override
  TextStyle get fontDisplayL => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 56.0,
  fontWeight: FontWeight.w800,
  height: 1.0,
);
  @override
  TextStyle get fontHeadingH1 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 26.0,
  fontWeight: FontWeight.w800,
  height: 1.2307692307692308,
);
  @override
  TextStyle get fontHeadingH2 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontHeadingH3 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w800,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontHeadingH4 => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  height: 1.5,
);
  @override
  TextStyle get fontBodyXl => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontBodyXlStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontBodyL => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  height: 1.5,
);
  @override
  TextStyle get fontBodyLStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
  height: 1.5,
);
  @override
  TextStyle get fontBodyM => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  height: 1.4285714285714286,
);
  @override
  TextStyle get fontBodyMStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
  height: 1.4285714285714286,
);
  @override
  TextStyle get fontBodyS => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontBodySStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 12.0,
  fontWeight: FontWeight.w700,
  height: 1.3333333333333333,
);
  @override
  TextStyle get fontBodyXs => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 10.0,
  fontWeight: FontWeight.w500,
  height: 1.4,
);
  @override
  TextStyle get fontBodyXsStrong => const TextStyle(
  fontFamily: 'Mulish',
  fontSize: 10.0,
  fontWeight: FontWeight.w700,
  height: 1.4,
);
}
