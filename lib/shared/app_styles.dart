import 'package:flutter/material.dart';
import 'package:vodafone_ui/shared/constants.dart';

double _heightCalc(int pxHeight, int fontSize) => pxHeight / fontSize;

class AppStyles {
  TextStyle get baseTextStyle => const TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: AppStrings.baseFontFamily,
      );

  TextStyle get cardTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        color: AppColors.cardTitle,
      );

  TextStyle get cardSubtitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 13,
        overflow: TextOverflow.ellipsis,
        color: AppColors.cardSubtitle,
      );

  TextStyle get title => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 17,
        overflow: TextOverflow.ellipsis,
        color: AppColors.cardTitle,
      );

  TextStyle get largeTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 27,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 27),
      );

  TextStyle get appbarTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
      );

  TextStyle get header => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get body => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: AppColors.dimGrey,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get subheader => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );
}
