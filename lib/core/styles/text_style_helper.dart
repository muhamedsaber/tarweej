import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tarweej/core/styles/app_text_styles_helper.dart';

class TextStylesHelper {
  static FontWeight thin = FontWeight.w100;
  static FontWeight extraLight = FontWeight.w200;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight thick = FontWeight.w900;

 String loadCurrentLanguageFromIntl() {
    String local = Intl.getCurrentLocale();
    if (local == 'ar') {
      return AppTextStylesHelper.lamaSansArabic;
    } else if (local == 'en') {
      return AppTextStylesHelper.tommyEnglish;
    }else{
      return AppTextStylesHelper.tommyEnglish;
    }
  }
   getCurrentLanguageByContext(BuildContext context) {
    String langCode = Localizations.localeOf(context).languageCode;
    if (langCode == 'ar') {
      return AppTextStylesHelper.lamaSansArabic;
    } else {
      return AppTextStylesHelper.tommyEnglish;
    }
  }
}
