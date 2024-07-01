import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/features/Auth/auth_providers/data/interfaces/firebase_auth_service_interface.dart';

class FirebaseAuthServiceImpl implements FirebaseAuthServiceInterface {
  /// Sign in with Google credentials
  @override
  Future<UserCredential> signInWithGoogleCredentials(
      GoogleSignInAuthentication googleSignInAuthentication) async {
    final credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  /// Sign in with Facebook credentials
  @override
  Future<UserCredential> signInWithFacebookCredentials(
      LoginResult result) async {
    final facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.tokenString);
    return await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
  }
}
