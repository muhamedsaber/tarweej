import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/di/dependency_injection.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/facebook_signin/facebook_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_providers.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/already_have_account.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/auth_section_divider.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/create_your_account_headline.dart';
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
          BlocProvider(
            create: (context) => getIt<FacebookSigninCubit>(),
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              children: [
                verticalSpace(70),
                const CreateYourAccountHeadline(),
                verticalSpace(30),
                BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupForm(),
                ),
                verticalSpace(20),
                const AuthSectionDivider(),
                verticalSpace(10),
                const SigninProviders(),
                verticalSpace(20),
                const AlreadyHaveAccount(),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
