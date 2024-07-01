
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
part 'google_signin_state.freezed.dart';
@freezed
class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState.initial() = _Initial;
  const factory GoogleSignInState.loading() = _Loading;
  const factory GoogleSignInState.success() = _Success;
  const factory GoogleSignInState.error(String message) = _Error;
  const factory GoogleSignInState.userAlreadyExist(FirebaseErrorModel model) = _UserAlreadyExist;
}
