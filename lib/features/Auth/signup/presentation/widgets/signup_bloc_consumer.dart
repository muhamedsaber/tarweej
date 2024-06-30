import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/config/Alerts/app_toasts.dart';
import 'package:tarweej/config/theme/colors/app_colors.dart';
import 'package:tarweej/core/common/widgets/text_button_loading_simulator.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_state.dart';
import 'package:tarweej/generated/l10n.dart';

class SignupBlocConsumer extends StatelessWidget {
  const SignupBlocConsumer({super.key, required this.signupButton});
  final Widget signupButton;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => null,
            success: () {
              AppToasts.showToast(
                  context: context,
                  message: S.of(context).signupSuccess,
                  backgrounColor: AppColors.lightGreen);
            },
            error: (message) {
              _handleFaliureState(context: context, message: message);
            });
      },
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => signupButton,
            loading: () => const TextButtonLoadingSimulator());
      },
    );
  }

  /// Show Dialog when an error occurs
  _handleFaliureState(
      {required BuildContext context, required String message}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          S.of(context).errorOccured,
          style: AppTextStyles.font16OnSurfaceMedium(context),
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(S.of(context).ok),
          ),
        ],
      ),
    );
  }
}
