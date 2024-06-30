import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/config/cache/cache_helper.dart';
import 'package:tarweej/config/cache/user_cache_helper.dart';
import 'package:tarweej/features/Auth/profile/user_profile/data/models/user_model.dart';
import 'package:tarweej/features/Auth/signup/data/model/signup_request_body.dart';
import 'package:tarweej/features/Auth/signup/data/repos/signup_repo.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.repo) : super(const SignupState.initial());
  final SignupRepo repo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  signup({required SignupRequestBody body}) async {
    emit(const SignupState.loading());
    final result = await repo
        .signup(SignupRequestBody(email: body.email, password: body.password));
    result.when(
      success: (data) {
        final user = data as UserCredential;
        saveUserUid(user);
        saveUserData(user);
        emit(const SignupState.success());
      },
      error: (e) {
        emit(SignupState.error(e.message));
      },
    );
  }

  /// when user click on the password textfield
  /// The password validation will be visible
  changePasswordValidationVisibility(bool isVisible) {
    if (isVisible) {
      emit(const SignupState.passwordValidationVisible());
    } else {
      emit(const SignupState.passwordValidationInvisible());
    }
  }
  



  /// save User [Uid] in cache using SecureStorage
  saveUserUid(UserCredential credential) async {
    await CacheHelper.saveUserUid(credential.user?.uid ?? "");
  }
  
  /// save User Data in cache using Shared Preferences
  saveUserData(UserCredential credential) async {
    final user = credential.user;
    await UserCahceHelper.saveUser(UserModel(
      email: user?.email ?? "",
    ));
  }
}
