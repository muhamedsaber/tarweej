import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';

class AuthSectionDivider extends StatelessWidget {
  const AuthSectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 1,
            margin: EdgeInsets.only(right: 10.w),
            color: context.theme.colorScheme.secondary,
          ),
        ),
        Text("or",
        style:AppTextStyles.font18OnSurfaceMedium(context),
        ),
        Flexible(
          child: Container(
            height: 1,
            margin: EdgeInsets.only(left: 10.w),
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}