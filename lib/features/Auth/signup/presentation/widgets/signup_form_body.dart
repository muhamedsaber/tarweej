import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/common/widgets/app_text_form_field.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/app_regex.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/password_validation_bloc_builder.dart';
import 'package:tarweej/generated/l10n.dart';

class SignupFormBody extends StatefulWidget {
  const SignupFormBody({super.key});

  @override
  State<SignupFormBody> createState() => _SignupFormBodyState();
}

class _SignupFormBodyState extends State<SignupFormBody> {
  late TextEditingController passwordController;
  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
    passwordController.addListener(showPasswordValidation);
    super.initState();
  }

  /// This function is called when the password field Get Changed
  /// It will show the password validation
  showPasswordValidation() {
    if (passwordController.text.isNotEmpty) {
      context.read<SignupCubit>().emitPasswordValidationVisiblity(true);
    } else if (passwordController.text.isEmpty) {
      context.read<SignupCubit>().emitPasswordValidationVisiblity(false);
    } else if (AppRegex.isPasswordValid(passwordController.text)) {
      context.read<SignupCubit>().emitPasswordValidationVisiblity(false);
    }
  }

  @override
  void dispose() {
    passwordController.removeListener(showPasswordValidation);
    super.dispose();
  }

  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: S.of(context).email,
          controller: context.read<SignupCubit>().emailController,
          isObscureText: false,
          validator: (value) {
            /// Validate the email
            if (value.isNullOrEmpty()) {
              return S.of(context).pleaseEnterEmail;
            } else if (!AppRegex.isEmailValid(
                context.read<SignupCubit>().emailController.text)) {
              return S.of(context).pleaseEnterValidEmail;
            } else {
              return null;
            }
          },
        ),
        verticalSpace(20),

        // Password TextFormField
        AppTextFormField(
          hintText: S.of(context).password,
          isObscureText: isObscureText,
          controller: context.read<SignupCubit>().passwordController,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          validator: (value) {
            // Validate the password
            if (value.isNullOrEmpty()) {
              return S.of(context).pleaseEnterPassword;
            } else if (!AppRegex.isPasswordValid(
                context.read<SignupCubit>().passwordController.text)) {
              return S.of(context).pleaseEnterValidPassword;
            } else {
              return null;
            }
          },
        ),
        verticalSpace(20),
        const PasswordValidationBlocBuilder(),
      ],
    );
  }
}
