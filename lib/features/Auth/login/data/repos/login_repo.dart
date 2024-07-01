import 'package:firebase_auth/firebase_auth.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_handler.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/login/data/models/login_request_body.dart';

class LoginRepo {
  final FirebaseAuth firebaseAuth;
  LoginRepo({required this.firebaseAuth});

  Future<FirebaseResult<UserCredential>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      UserCredential credential = await firebaseAuth.signInWithEmailAndPassword(
          email: loginRequestBody.email, password: loginRequestBody.password);

      return FirebaseResult.success(credential);
    } catch (e) {
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    }
  }
}
