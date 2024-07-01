import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/features/Auth/auth_providers/data/interfaces/firebase_auth_service_interface.dart';
import 'package:tarweej/features/Auth/auth_providers/data/repos/facebook_signin_repo.dart';
import 'package:tarweej/features/Auth/auth_providers/data/repos/google_signin_repo.dart';
import 'package:tarweej/features/Auth/auth_providers/data/services/firebase_auth_services_impl.dart';
import 'package:tarweej/features/Auth/auth_providers/data/services/google_signin_service.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/facebook_signin/facebook_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/login/data/repos/login_repo.dart';
import 'package:tarweej/features/Auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:tarweej/features/Auth/signup/data/repos/signup_repo.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';

final getIt = GetIt.instance;

setupDependencyInjection() async {
  /// Firebase Auth and Google Signin
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  FacebookAuth facebookAuth = FacebookAuth.instance;
  GoogleSignInService googleSignInService =
      GoogleSignInService(googleSignIn: googleSignIn);

  getIt.registerSingleton<FirebaseAuthServiceInterface>(
      FirebaseAuthServiceImpl());

  /// signup with email and password
  getIt.registerSingleton<SignupRepo>(SignupRepo(firebaseAuth));
  getIt.registerSingleton<SignupCubit>(SignupCubit(getIt()));

  /// signIn with Google
  getIt.registerSingleton<GoogleSigninRepo>(GoogleSigninRepo(
      googleSignInService: googleSignInService, firebaseAuthService: getIt()));
  getIt.registerSingleton<GoogleSignInCubit>(GoogleSignInCubit(repo: getIt()));

  /// Facebook Signin
  getIt.registerSingleton<FacebookSigninRepo>(FacebookSigninRepo(
      facebookAuth: facebookAuth, firebaseAuthServiceInterface: getIt()));
  getIt.registerSingleton<FacebookSigninCubit>(
      FacebookSigninCubit(repo: getIt()));

  /// Firebase Login
  getIt.registerSingleton<LoginRepo>(LoginRepo(firebaseAuth: firebaseAuth));
  // factory
getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));


}
