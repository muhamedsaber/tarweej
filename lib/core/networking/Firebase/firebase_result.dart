import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tarweej/core/networking/Firebase/firebase_error_model.dart';
part 'firebase_result.freezed.dart';

@freezed
class FirebaseResult<T> with _$FirebaseResult {
  factory FirebaseResult.success(T data) = Success<T>;
  factory FirebaseResult.error(FirebaseErrorModel model) = Error<T>;
}
