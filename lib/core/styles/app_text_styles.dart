import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/styles/text_style_helper.dart';

class AppTextStyles {
  

  /*
      Note: TarweejApp support multiple languages, so the font family is set based on the current language.
      The font family is set in the TextStylesHelper class based on the current language.
      Do not use the font family directly in the TextStyle, use the TextStylesHelper
       class to get the font family based on the current language.

    ----------
    This Could be not the best practice, but it's a good way to handle multiple languages in the app.
    I promice to improve this in the future.
    ----------
  */

  /// ------------------ Medium ------------------

  static TextStyle font10OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 12.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font12OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 12.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context)
    );
  }

  static TextStyle font14OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 14.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font16OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 16.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font18OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 18.sp,
      fontWeight: TextStylesHelper.medium,
      decorationThickness: 0,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font20OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 20.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font22OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 22.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font24OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 22.sp,
      fontWeight: TextStylesHelper.medium,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font30OnSurfaceMedium(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 30.sp,
      fontWeight: TextStylesHelper.extraBold,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  /// ------------------ Regular ------------------
  static TextStyle font16OnSurfaceRegular(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.secondary,
      fontSize: 16.sp,
      fontWeight: TextStylesHelper.regular,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font20OnSurfaceRegular(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.secondary,
      fontSize: 20.sp,
      fontWeight: TextStylesHelper.regular,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  ///------------------- ExtraBold -------------------
  static TextStyle font30OnSurfaceExtraBold(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 30.sp,
      fontWeight: TextStylesHelper.extraBold,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }

  static TextStyle font20OnSurfaceExtraBold(BuildContext context) {
    return TextStyle(
      color: context.theme.colorScheme.onSurface,
      fontSize: 20.sp,
      fontWeight: TextStylesHelper.extraBold,
      fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
    );
  }
}
