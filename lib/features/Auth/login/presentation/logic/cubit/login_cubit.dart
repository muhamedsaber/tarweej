import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/features/Auth/login/data/models/login_request_body.dart';
import 'package:tarweej/features/Auth/login/data/repos/login_repo.dart';
import 'package:tarweej/features/Auth/login/presentation/logic/cubit/login_state.dart';
import 'package:tarweej/core/Data/models/user_model.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  login() async {
    emit(const LoginState.loading());

    final result = await loginRepo.login(
        loginRequestBody: LoginRequestBody(
            email: emailController.text, password: passwordController.text));
    log("Email: ${emailController.text} Password: ${passwordController.text}");

    result.when(success: (userCredential) {
      saveUserUid(userCredential);
      saveUserData(userCredential);
      _clearControllers();
      emit(const LoginState.success());
    }, error: (e) {
      emit(LoginState.error(e.message));
    });
  }

  /// save User [Uid] in cache using FlutterSecureStorage
  saveUserUid(UserCredential credential) async {
    await CacheHelper.saveUserUid(credential.user?.uid ?? "");
  }

  /// save User Data in cache using Shared Preferences
  saveUserData(UserCredential credential) async {
    final user = credential.user;
    await UserCahceHelper.saveUser(UserModel(
      email: user?.email ?? "",
      name: user?.displayName ?? "",
      userProfileImage: user?.photoURL ?? "",
    ));
  }

  _clearControllers() {
    emailController.clear();
    passwordController.clear();
  }
}
