import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';

class SigninProviderButton extends StatelessWidget {
  const SigninProviderButton({super.key, required this.imege, this.onTap});
  final String imege;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.h,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Image.asset(imege),
        ),
      ),
    );
  }
}