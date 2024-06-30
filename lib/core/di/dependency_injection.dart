import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tarweej/features/Auth/auth_providers/data/repos/signin_with_google_repo.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/signup/data/repos/signup_repo.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';

final getIt = GetIt.instance;

setupDependencyInjection() async {

  /// Firebase Auth and Google Signin
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  /// signup with email and password
  getIt.registerSingleton<SignupRepo>(SignupRepo(firebaseAuth));
  getIt.registerSingleton<SignupCubit>(SignupCubit(getIt()));

  /// signIn with Google
  getIt.registerSingleton<SigninWithGoogleRepo>(
      SigninWithGoogleRepo(googleSignIn: googleSignIn));
  getIt.registerSingleton<GoogleSignInCubit>(GoogleSignInCubit(repo: getIt()));
}
