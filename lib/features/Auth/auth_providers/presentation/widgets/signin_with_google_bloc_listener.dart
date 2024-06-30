import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/config/Alerts/app_toasts.dart';
import 'package:tarweej/core/Alerts/app_dialogs.dart';
import 'package:tarweej/core/common/widgets/app_text_button.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/google_signin/google_signin_cubit.dart';
import 'package:tarweej/features/Auth/auth_providers/presentation/google_signin/google_signin_state.dart';

class SignInWithGoogleBlocListener extends StatelessWidget {
  const SignInWithGoogleBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSignInCubit, GoogleSignInState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.navigateBack();
            AppToasts.showToast(
                context: context, message: "Google Sign in success");
          },
          error: (message) {
            context.navigateBack();
            AppToasts.showToast(context: context, message: message);
          },
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          userAlreadyExist: (errorModel) {
            context.navigateBack();
            AppDialogs.showCustomDialog(
              context: context,
              title: errorModel.message,
              content: errorModel.errorDescription,
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(10),
                    AppTextButton(
                      buttonText: "Login",
                      borderRadius: 1000.r,
                      buttonHeight: 35.h,
                      buttonWidth: 140.w,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Dismiss"),
                    ),
                  ],
                )
              ],
            );
          },
          orElse: () => null,
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
