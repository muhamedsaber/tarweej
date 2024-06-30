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
    passwordController.addListener(changePasswordValidationVisibility);
    super.initState();
  }

  /// Invoked with any input in the password field,
  /// displaying password validation Guide, its Purpose is to
  /// Hide The Password Validation Guide if the password field is empty only
  changePasswordValidationVisibility() {
    if (passwordController.text.isNotEmpty) {
      context.read<SignupCubit>().changePasswordValidationVisibility(true);
    } else {
      context.read<SignupCubit>().changePasswordValidationVisibility(false);
    }
  }

  @override
  void dispose() {
    passwordController.removeListener(changePasswordValidationVisibility);
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
          validator: _validateEmail
        ),
        verticalSpace(20),

        // Password TextFormField
        AppTextFormField(
          hintText: S.of(context).password,
          isObscureText: isObscureText,
          controller: context.read<SignupCubit>().passwordController,
          suffixIcon: IconButton(
            onPressed: _changePasswordVisibility,
            icon: _changePasswordIconVisibility()
          ),
          validator: _validatePassword
        ),
        verticalSpace(20),
        const PasswordValidationBlocBuilder(),
      ],
    );
  }
    

    /// Change Password Icon Visibility
  Icon _changePasswordIconVisibility() {
    return Icon(
      isObscureText ? Icons.visibility_off : Icons.visibility,
    );}

   /// Cahnge Password Visibility
  void _changePasswordVisibility() {
    setState(() {
      isObscureText = !isObscureText;
    });}

  /// Validates the email field
  String? _validateEmail(String? value) {
    if (value.isNullOrEmpty()) {
      return S.of(context).pleaseEnterEmail;
    } else if (!AppRegex.isEmailValid(value!)) {
      return S.of(context).pleaseEnterValidEmail;
    }
    return null;
  }
  
  /// Validates the password field
  String? _validatePassword(String? value) {
    if (value.isNullOrEmpty()) {
      return S.of(context).pleaseEnterPassword;
    } else if (!AppRegex.isPasswordValid(value!)) {
      return S.of(context).pleaseEnterValidPassword;
    }
    return null;
  }
}
