import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';
@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.success() = _Success;
  const factory SignupState.error(String message) = _Error;

  // password validation
  const factory SignupState.passwordValidationVisible() = _PasswordValidationVisible;
  const factory SignupState.passwordValidationInvisible() = _PasswordValidationInvisible;
}
