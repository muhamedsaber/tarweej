import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/networking/Firebase/Firebase_auth_errors.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';

class FirebaseErrorHandler {
static  FirebaseErrorModel handleFirebaseAuthError(dynamic exception) {
    if (exception is FirebaseAuthException) {
      if (!exception.code.isNullOrEmpty()) {
        FirebaseAuthErrorsCodesEnum? code = errorsCodes[exception.code] ??
            FirebaseAuthErrorsCodesEnum.unknownError;
        log(code.toString());
        return FirebaseErrorModel(
            message: firebaseAuthErrorsMessagesMap[code] ??
                FirebaseAuthErrorMessages.unknownError,
            icon: getFirebaseAuthIcon[code]??Icons.error,
            code: exception.code);
      } else {
        return FirebaseErrorModel(
            message: FirebaseAuthErrorMessages.unknownError,
            icon: Icons.error,
            code: "unknown Error Ocuured");
      }
    } else {
      return FirebaseErrorModel(
          message: FirebaseAuthErrorMessages.unknownError,
          icon: Icons.error,
          code: "unknown Error Ocuured");
    }
  }
}
