import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/core/networking/Firebase/Firebase_auth_errors.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_handler.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';

class SigninWithGoogleRepo {
  final GoogleSignIn googleSignIn;
  SigninWithGoogleRepo({required this.googleSignIn});
  Future<FirebaseResult<UserCredential>> signInWithGoogle() async {
    // Trigger the sign-in flow to Sign in with Google
    try {
      GoogleSignInAccount? signInAccount = await googleSignIn.signIn();

      /// if [signInAccount] is not null which means the user has signed in successfully
      if (signInAccount != null) {
        /// Getting the authentication details of the user
        /// the [googleSignInAuthentication] carry the access token and id token
        /// which will be used to create credentials for the user
        /// to enable sign in with credentials rather than using email and password
        GoogleSignInAuthentication googleSignInAuthentication =
            await signInAccount.authentication;

        /// creating the credentials for the user
        final credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        /// Finally, signing in with the credentials to create the user

        UserCredential authCredentials =
            await _signinWithCredentials(credential);

        /// if user email is already exist in Firebase
        /// it will return an error
        /// The Flow should change to Login instead of Sign up
        /// i made this to make the signin more complex
        /// because im a bad person i have issues in my life
        /// so i will make the user life harder by adding this feature 🤌
        bool? isNewUser = authCredentials.additionalUserInfo?.isNewUser;
        if (isNewUser != null && !isNewUser) {
          return FirebaseResult.error(
            FirebaseErrorModel(
                message: "This email is already connected to an account",
                errorDescription: "Do you want to Log in instead?",
                icon: Icons.error,
                code: FirebaseErrors.accountExistsWithDifferentCredential),
          );
        }

        return FirebaseResult.success(authCredentials);
      } else {
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
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    }
  }


  /// sign in with credentials
  Future<UserCredential> _signinWithCredentials(
      OAuthCredential credential) async {
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
