import 'package:flutter/material.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/utils/app_assets.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/logic/signin_with_google_service.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/widgets/signin_provider_button.dart';

class SigninProviders extends StatelessWidget {
  const SigninProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         SigninProviderButton(
          imege: AppAssets.googleLogo,
          onTap: () => SigninWithGoogle().signinWithGoogle(),
        ),
        horizontalSpace(10),
        const SigninProviderButton(
          imege: AppAssets.googleLogo,
        ),
        horizontalSpace(10),
        const SigninProviderButton(
          imege: AppAssets.googleLogo,
        )
      ],
    );
  }
}
