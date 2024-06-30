import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';

class TextButtonLoadingSimulator extends StatelessWidget {
  const TextButtonLoadingSimulator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50.h,
              width: context.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  color: context.theme.primaryColor),
              child: Center(
                  child: CircularProgressIndicator(
                color: context.theme.colorScheme.onPrimary,
              )),
            );
  }
}