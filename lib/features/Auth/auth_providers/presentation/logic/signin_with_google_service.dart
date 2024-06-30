import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';

class SigninWithGoogle {
  /// sign in with google
  signinWithGoogle() async {
    GoogleSignInAccount? signInAccount = await GoogleSignIn().signIn();
    if (signInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await signInAccount.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential authCredentials =
          await FirebaseAuth.instance.signInWithCredential(credential);
      _saveUserUid(authCredentials);
      _saveUserData(authCredentials);
    }
  }

  _saveUserUid(UserCredential credential) async {
    await CacheHelper.saveUserUid(credential.user?.uid ?? "");
  }

  _saveUserData(UserCredential credential) async {
    final user = credential.user;
    await UserCahceHelper.saveUser(UserModel(
      email: user?.email ?? "",
    ));
  }
}
