import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/utils/app_assets.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/facebook_signin/facebook_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_provider_button.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_with_facebook_bloc_listener.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_with_google_bloc_listener.dart';

class SigninProviders extends StatelessWidget {
  const SigninProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SignInProviderButton(
            imege: AppAssets.googleLogo,
            onTap: () {
              // trigger signup with google
              _signInWithGoogle(context);
            }),
        horizontalSpace(10),
        SignInProviderButton(
          imege: AppAssets.facebookLogo,
          onTap: () {
            _signInWithFacebook(context);
          },
        ),

        /// Listeners
        const SignInWithGoogleBlocListener(),
        const SigninWithFacebookBlocListener()
      ],
    );
  }

  /// This method is used to trigger signin with [google]
  _signInWithGoogle(BuildContext context) {
    context.read<GoogleSignInCubit>().signIn();
  }

  /// This method is used to trigger signin with [facebook]
  _signInWithFacebook(BuildContext context) {
    context.read<FacebookSigninCubit>().signIn();
  }
}
