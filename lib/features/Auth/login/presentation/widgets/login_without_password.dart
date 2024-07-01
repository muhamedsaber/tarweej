import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/common/widgets/app_text_button.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';

class LoginWithoutPassword extends StatelessWidget {
  const LoginWithoutPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: "Login Without Password",
      borderRadius: 1000.r,
      buttonHeight: 10.h,
      textStyle: AppTextStyles.font10OnSurfaceMedium(context),
      backgroundColor: context.theme.colorScheme.surface,
      buttonWidth: 200.w,
      borderSide: BorderSide(
        color: context.theme.primaryColor,
        width: 1.w,
      ),
      onPressed: () {},
    );
  }
}
