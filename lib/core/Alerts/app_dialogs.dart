import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';

class AppDialogs {
  static showCustomDialog({
    required BuildContext context,
    required String title,
    required String? content,
    List<Widget>? actions 
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.r)),
        title: Text(title,
            textAlign: TextAlign.center,
            style: AppTextStyles.font16OnSurfaceMedium(context)),
        titlePadding:
            EdgeInsets.only(bottom: 10.h, top: 30.h, left: 20.w, right: 20.w),
        content: Text(
          content ?? "",
          textAlign: TextAlign.center,
          style: AppTextStyles.font10OnSurfaceMedium(context)
              .copyWith(fontWeight: FontWeight.w100),
        ),
        alignment: Alignment.center,
        actionsAlignment: MainAxisAlignment.center,
        actions: actions
      ),
    );
  }
}
