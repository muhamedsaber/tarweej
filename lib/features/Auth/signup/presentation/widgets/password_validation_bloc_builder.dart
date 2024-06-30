import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_state.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/password_validation_guid.dart';

class PasswordValidationBlocBuilder extends StatelessWidget {
  const PasswordValidationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        bool isVisible = state.maybeWhen(
          passwordValidationVisible: () => true,
          passwordValidationInvisible: () => false,
          orElse: () => false,
        );
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          child: isVisible
              ? const PasswordValidationGuid()
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
