import 'package:firebase_auth/firebase_auth.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_handler.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/signup/data/model/signup_request_body.dart';

class SignupRepo {
  FirebaseAuth firebaseAuth;
  SignupRepo(this.firebaseAuth);
  Future<FirebaseResult<UserCredential>> signup(SignupRequestBody body) async {
    try {
      UserCredential credential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: body.email,
        password: body.password,
      );
      return FirebaseResult.success(credential);
    } catch (e) {
      return FirebaseResult.error(
          FirebaseErrorHandler.handleFirebaseAuthError(e));
    }
  }
}
