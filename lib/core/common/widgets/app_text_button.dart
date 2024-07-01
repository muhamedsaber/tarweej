import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final BorderSide? borderSide;
  final Color? splashColor;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      this.buttonWidth,
      required this.buttonText,
      this.textStyle,
      this.onPressed,
      this.splashColor,
      this.borderSide});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 13.r),
              side: borderSide ?? BorderSide.none),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? context.theme.primaryColor,
        ),
        //splash color
        overlayColor: WidgetStateProperty.all(
         splashColor
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ?? AppTextStyles.font16OnSurfaceMedium(context),
      ),
    );
  }
}
