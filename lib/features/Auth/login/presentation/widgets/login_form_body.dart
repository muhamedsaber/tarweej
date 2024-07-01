import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/common/widgets/app_text_form_field.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/app_regex.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:tarweej/generated/l10n.dart';

class LoginFormBody extends StatefulWidget {
  const LoginFormBody({super.key});

  @override
  State<LoginFormBody> createState() => _LoginFormBodyState();
}

class _LoginFormBodyState extends State<LoginFormBody> {
  LoginCubit? _loginCubit;

  @override
  void initState() {
    // Initialize _loginCubit by fetching it from the context
    _loginCubit = context.read<LoginCubit>();
    context.read<LoginCubit>().emailController = TextEditingController();
    context.read<LoginCubit>().passwordController = TextEditingController();
    super.initState();
  }

  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
            hintText: S.of(context).email,
            isObscureText: false,
            controller: context.read<LoginCubit>().emailController,
            validator: _validateEmail),
        verticalSpace(20),

        // Password TextFormField
        AppTextFormField(
            hintText: S.of(context).password,
            isObscureText: isObscureText,
            controller: context.read<LoginCubit>().passwordController,
            suffixIcon: IconButton(
                onPressed: _changePasswordVisibility,
                icon: _changePasswordIconVisibility()),
            validator: _validatePassword),
        verticalSpace(20),
      ],
    );
  }

  /// Change Password Icon Visibility
  Icon _changePasswordIconVisibility() {
    return Icon(
      isObscureText ? Icons.visibility_off : Icons.visibility,
    );
  }

  /// Cahnge Password Visibility
  void _changePasswordVisibility() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

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
    } else if (value!.length < 8) {
      return S.of(context).pleaseEnterValidPassword;
    }
    return null;
  }

  @override
  void dispose() {
    // Dispose of the controllers directly without using context
    _loginCubit?.emailController.dispose();
    _loginCubit?.passwordController.dispose();
    super.dispose();
  }
}
