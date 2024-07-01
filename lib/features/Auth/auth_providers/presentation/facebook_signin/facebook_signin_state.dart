import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
part 'facebook_signin_state.freezed.dart';

@freezed
class FacebookSigninState with _$FacebookSigninState {
  const factory FacebookSigninState.initial() = _Initial;
  const factory FacebookSigninState.loading() = _Loading;
  const factory FacebookSigninState.success() = _Success;
  const factory FacebookSigninState.error(String message) = _Error;
  const factory FacebookSigninState.userAlreadyExist(FirebaseErrorModel model) =
      _UserAlreadyExist;
}
