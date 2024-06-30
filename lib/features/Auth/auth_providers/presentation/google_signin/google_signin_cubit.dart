import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/core/networking/Firebase/Firebase_auth_errors.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/auth_providers/data/repos/signin_with_google_repo.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/google_signin/google_signin_state.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit({
    required this.repo,
  }) : super(const GoogleSignInState.initial());

  final SigninWithGoogleRepo repo;

  signIn() async {
    emit(const GoogleSignInState.loading());
    FirebaseResult<UserCredential> result = await repo.signInWithGoogle();
    result.when(
      success: (data) {
        log(data.toString());
        final user = data as UserCredential;
        _saveUserUid(user);
        _saveUserData(user);
        emit(const GoogleSignInState.success());
      },
      error: (e) {
        log(e.code);
        if (e.code == FirebaseErrors.accountExistsWithDifferentCredential) {
          emit(GoogleSignInState.userAlreadyExist(e));
        }
        else{
          emit(GoogleSignInState.error(e.message));
        }
      },
    );
  }

  /// save User [Uid] in cache using FlutterSecureStorage
  _saveUserUid(UserCredential credential) async {
    await CacheHelper.saveUserUid(credential.user?.uid ?? "");
  }

  /// save User Data in cache using Shared Preferences
  _saveUserData(UserCredential credential) async {
    final user = credential.user;
    await UserCahceHelper.saveUser(UserModel(
      email: user?.email ?? "",
      name: user?.displayName ?? "",
      userProfileImage: user?.photoURL ?? "",
    ));
  }
}
