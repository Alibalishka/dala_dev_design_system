import 'package:dala_dev_design_system/src/tokens/typography/tokens.g.dart';
import 'package:flutter/material.dart';

class DdText extends StatelessWidget {
  DdText.primary({required this.text, super.key})
      : style = DefaultTextStyleTokens().mobileFontBodyL;
  DdText.secondary({required this.text, super.key})
      : style = DefaultTextStyleTokens().mobileFontBodyM;
  DdText.tertiary({required this.text, super.key})
      : style = DefaultTextStyleTokens().mobileFontBodyS;

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
