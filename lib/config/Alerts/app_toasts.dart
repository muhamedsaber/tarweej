import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';

class AppToasts {
  static showToast({
    required BuildContext context,
    required String message,
    IconData? icon,
    Color? backgrounColor,
    Color? textColor,
  }) {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 30.h,
        left: context.width * 0.15,
        right: context.width * 0.15,
        child: Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) => removeToast,
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: backgrounColor ?? Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                mainAxisAlignment: icon == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  icon == null
                      ? const SizedBox.shrink()
                      : Icon(icon, color: textColor ?? Colors.white),
                  icon == null
                      ? const SizedBox.shrink()
                      : horizontalSpace(10.w),
                  Flexible(
                    child: Text(
                      message,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    _addToast(context, overlayEntry);
  }

  static _addToast(BuildContext context, OverlayEntry overlayEntry) {
    /// Insert the overlay entry into Top of The Stack
    Navigator.of(context).overlay!.insert(overlayEntry);
    Future.delayed(const Duration(seconds: 3), () {
      removeToast(overlayEntry);
    });
  }

  /// Remove the overlay entry from the stack
  static removeToast(OverlayEntry overlayEntry) {
    overlayEntry.remove();
  }
}
