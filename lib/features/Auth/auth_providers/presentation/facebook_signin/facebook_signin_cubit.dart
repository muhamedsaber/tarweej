import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/core/networking/Firebase/Firebase_auth_errors.dart';
import 'package:tarweej/core/networking/Firebase/firebase_result.dart';
import 'package:tarweej/features/Auth/auth_providers/data/repos/facebook_signin_repo.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/facebook_signin/facebook_signin_state.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';

class FacebookSigninCubit extends Cubit<FacebookSigninState> {
  FacebookSigninCubit({required this.repo})
      : super(const FacebookSigninState.initial());
  final FacebookSigninRepo repo;

  signIn() async {
    emit(const FacebookSigninState.loading());
    FirebaseResult<UserCredential> result = await repo.sigInWithFacebook();
    result.when(success: (userCredentials) {
      _saveUserUid(userCredentials);
      _saveUserData(userCredentials);
      emit(const FacebookSigninState.success());
    }, error: (e) {
      log(e.code);
      if (e.code == FirebaseErrors.accountExistsWithDifferentCredential) {
        emit(FacebookSigninState.userAlreadyExist(e));
      } else {
        emit(FacebookSigninState.error(e.message));
      }
    });
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
