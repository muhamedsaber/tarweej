import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:tarweej/features/Auth/signup/data/repos/signup_repo.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';

final getIt = GetIt.instance;

setupDependencyInjection() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  getIt.registerSingleton<SignupRepo>(SignupRepo(firebaseAuth));
  getIt.registerSingleton<SignupCubit>(SignupCubit(getIt()));
  
}
