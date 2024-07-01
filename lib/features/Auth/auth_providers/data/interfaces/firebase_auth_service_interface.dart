import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class FirebaseAuthServiceInterface {
  /// Sign in with Google credentials
  Future<UserCredential> signInWithGoogleCredentials(
      GoogleSignInAuthentication googleSignInAuthentication);

  /// Sign in with Facebook credentials
  Future<UserCredential> signInWithFacebookCredentials(LoginResult result);
}
