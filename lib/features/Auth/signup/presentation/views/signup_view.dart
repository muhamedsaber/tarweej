import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/di/dependency_injection.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/utils/app_assets.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_providers.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<GoogleSignInCubit>(),
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                verticalSpace(120),
                BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupForm(),
                ),
                verticalSpace(20),
                const SigninProviders()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
