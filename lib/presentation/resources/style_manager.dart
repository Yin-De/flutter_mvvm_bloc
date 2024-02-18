import 'package:flutter/material.dart';
import 'package:yinde/presentation/resources/string_manager.dart';
import 'package:yinde/presentation/resources/values_manager.dart';

import 'color_management.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
// light text style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}
// bold text style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}


// medium text style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}
TextStyle getMediumStyleBig(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}
TextStyle getMediumStyleBigs(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}

InputDecoration searchText() {
  return InputDecoration(
          fillColor: ColorManager.darkPrimary,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s33),
            borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none
            ),
          ),
          hintText:AppStrings.searchmovie,
          prefixIcon: const Icon(
            Icons.search,
            size: AppSize.s33,
          )

  );
}

