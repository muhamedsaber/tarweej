import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_handler.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/auth_providers/data/interfaces/firebase_auth_service_interface.dart';
import 'package:tarweej/features/Auth/auth_providers/data/services/google_signin_service.dart';

class GoogleSigninRepo {
  final GoogleSignInService googleSignInService;
  final FirebaseAuthServiceInterface firebaseAuthService;

  GoogleSigninRepo({
    required this.googleSignInService,
    required this.firebaseAuthService,
  });

  Future<FirebaseResult<UserCredential>> signInWithGoogle() async {
    try {
      GoogleSignInAuthentication? googleAuth =
          await googleSignInService.signInWithGoogle();

      if (googleAuth != null) {
        log(googleAuth.toString());
        UserCredential authCredentials =
            await firebaseAuthService.signInWithGoogleCredentials(googleAuth);

        /// if user email is already exist in Firebase
        /// it will return an error
        /// The Flow should change to Login instead of Sign up
        /// i made this to make the signin more complex
        /// because im a bad person i have issues in my life
        /// so i will make the user life harder by adding this feature 🤌
        /// ====================================
        /// redundant code
        /// ====================================
        /// if user account is already exist on firebase and user is trying to login
        /// with that email, Firebase will keep the flow and never throw exception
        /// Note. Firebase in this case link the user existing account and make him login  even if the state of the current user is loggedin
        /// but in Facebook its different if the user is trying to login with an email that already exist
        /// it will throw an exception [account-exists-with-different-credential]
        ///
        /// -----------------------------------
        /// snippet for disable the user from login with existing account
        /// -----------------------------------
        // bool? isNewUser = authCredentials.additionalUserInfo?.isNewUser;
        // if (isNewUser != null && !isNewUser) {
        //   return FirebaseResult.error(
        //     FirebaseErrorModel(
        //       message: "This email is already connected to an account",
        //       errorDescription: "Do you want to Log in instead?",
        //       icon: Icons.error,
        //       code: FirebaseErrors.accountExistsWithDifferentCredential,
        //     ),
        //   );
        // }

        return FirebaseResult.success(authCredentials);
      } else {
        /// if googleAuth is null, then the user cancelled the sign-in flow
        /// or there was an error during the sign-in process so its null at the end
        return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(
            FirebaseErrorModel(
                message:
                    "Sign-in with Google was cancelled or failed. Please try again.",
                icon: Icons.error,
                code: "google_signin_failed"),
          ),
        );
      }
    } catch (e) {
      log(e.toString());
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    }
  }
}
