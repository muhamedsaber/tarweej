import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  final GoogleSignIn googleSignIn;
  GoogleSignInService({required this.googleSignIn});

  Future<GoogleSignInAuthentication?> signInWithGoogle() async {
    try {
      GoogleSignInAccount? signInAccount = await googleSignIn.signIn();
      if (signInAccount != null) {
        return await signInAccount.authentication;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
