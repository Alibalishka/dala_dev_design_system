import 'package:dala_dev_design_system/src/tokens/components/app_components.dart';
import 'package:dala_dev_design_system/src/tokens/typography/tokens.g.dart';
import 'package:flutter/material.dart';

enum DdButtonType { primary, secondary, tertiary }

enum DdButtonSize { s, m, l }

class DdButton extends StatelessWidget {
  final String? label;
  final DdButtonSize? size;
  final DdButtonType _type;
  final VoidCallback? onPressed;
  final double? horizontalPadding;
  final double? verticalPadding;

  const DdButton.primary({
    super.key,
    this.label,
    this.size,
    this.onPressed,
    this.horizontalPadding,
    this.verticalPadding,
  }) : _type = DdButtonType.primary;

  const DdButton.secondary({
    super.key,
    this.label,
    this.size,
    this.onPressed,
    this.horizontalPadding,
    this.verticalPadding,
  }) : _type = DdButtonType.secondary;

  const DdButton.tertiary({
    super.key,
    this.label,
    this.size,
    this.onPressed,
    this.horizontalPadding,
    this.verticalPadding,
  }) : _type = DdButtonType.tertiary;

  @override
  Widget build(BuildContext context) {
    Color staticFillColor, pressedFillColor, staticItemColor, borderColor;
    double horizontalPadding;
    double verticalPadding;

    TextStyle textStyle;
    double borderRadius;
    double height;

    switch (_type) {
      case DdButtonType.primary:
        staticFillColor = AppComponents.buttongroupButtonPrimaryBgColorDefault;
        pressedFillColor = AppComponents.buttongroupButtonPrimaryBgColorHover;
        staticItemColor =
            AppComponents.buttongroupButtonPrimaryTextColorDefault;
        borderColor = AppComponents.buttongroupButtonPrimaryBorderColorDefault;
      case DdButtonType.secondary:
        staticFillColor =
            AppComponents.buttongroupButtonSecondaryBgColorDefault;
        pressedFillColor = AppComponents.buttongroupButtonSecondaryBgColorHover;
        staticItemColor =
            AppComponents.buttongroupButtonSecondaryTextColorDefault;
        borderColor =
            AppComponents.buttongroupButtonSecondaryBorderColorDefault;
      default:
        staticFillColor =
            AppComponents.buttongroupButtonSecondaryBgColorDefault;
        pressedFillColor = AppComponents.buttongroupButtonTertiaryBgColorHover;
        staticItemColor =
            AppComponents.buttongroupButtonTertiaryTextColorDefault;
        borderColor = AppComponents.buttongroupButtonTertiaryBorderColorDefault;
    }

    switch (size) {
      case DdButtonSize.l:
        textStyle = DefaultTextStyleTokens().fontBodyL;
        verticalPadding = this.verticalPadding ?? 12;
        horizontalPadding = this.horizontalPadding ?? 24;
        borderRadius = AppComponents.buttongroupButtonLBorderRadius;
        height = 48;
      case DdButtonSize.m:
        textStyle = DefaultTextStyleTokens().fontBodyM;
        verticalPadding = this.verticalPadding ?? 8;
        horizontalPadding = this.horizontalPadding ?? 16;
        borderRadius = AppComponents.buttongroupButtonMBorderRadius;
        height = 40;
      default:
        textStyle = DefaultTextStyleTokens().fontBodyS;
        verticalPadding = this.verticalPadding ?? 6;
        horizontalPadding = this.horizontalPadding ?? 16;
        borderRadius = AppComponents.buttongroupButtonSBorderRadius;
        height = 32;
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return staticFillColor;
          } else if (states.contains(MaterialState.pressed)) {
            return pressedFillColor;
          }
          return staticFillColor;
        }),
        // overlayColor: MaterialStateProperty.resolveWith((states) {
        //   if (states.contains(MaterialState.pressed)) {
        //     return pressedFillColor;
        //   }
        //   return staticFillColor;
        // }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return staticItemColor;
        }),
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(height)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        elevation: const MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label ?? '',
            style: textStyle,
          )
        ],
      ),
    );
  }
}
