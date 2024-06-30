import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';

class SigninWithFacebookService {
  signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();
    if (loginResult.status == LoginStatus.success) {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      UserCredential authCredentials = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
      _saveUserUid(authCredentials);
      _saveUserData(authCredentials);
    } else {}
    
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
