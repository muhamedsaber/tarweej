import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tarweej/core/networking/Firebase/Firebase_auth_errors.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_handler.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/auth_providers/data/interfaces/firebase_auth_service_interface.dart';

class FacebookSigninRepo {
  final FacebookAuth facebookAuth;
  final FirebaseAuthServiceInterface firebaseAuthServiceInterface;
  FacebookSigninRepo(
      {required this.facebookAuth, required this.firebaseAuthServiceInterface});

  Future<FirebaseResult<UserCredential>> sigInWithFacebook() async {
    try {
      final result = await facebookAuth.login();
      if (result.status == LoginStatus.success) {
        final userCredential = await firebaseAuthServiceInterface
            .signInWithFacebookCredentials(result);

        bool? isNewUser = userCredential.additionalUserInfo?.isNewUser;
        if (isNewUser != null && !isNewUser) {
          return FirebaseResult.success(
              userCredential); // return success if user is not new
        }
        return FirebaseResult.success(userCredential);
      } else {
        return FirebaseResult.error(FirebaseErrorModel(
            message:
                "Sign-in with Facebook was cancelled or failed. Please try again.",
            icon: Icons.error,
            code: "facebook_signin_failed"));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseErrors.accountExistsWithDifferentCredential) {
        // login The user
        return FirebaseResult.error(
          FirebaseErrorModel(
            message: "This email is already connected to an account",
            // ading description
            errorDescription: "Do you want to Log in instead?",
            icon: Icons.error,
            code: FirebaseErrors.accountExistsWithDifferentCredential,
          ),
        );
      }
      log(e.toString());
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    } catch (e) {
      log(e.toString());
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    }
  }
}
