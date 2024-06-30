import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/helpers/app_regex.dart';
import 'package:tarweej/core/styles/text_style_helper.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/generated/l10n.dart';

class PasswordValidation extends StatefulWidget {
  const PasswordValidation({
    super.key,
  });

  @override
  State<PasswordValidation> createState() => _PasswordValidationState();
}

class _PasswordValidationState extends State<PasswordValidation> {
  late TextEditingController passwordController;
  bool isLowercase = false;
  bool isUppercase = false;
  bool isNumber = false;
  bool isSpecialCharacter = false;
  bool isLength = false;
  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
    passwordController.addListener(updateValidation);
    super.initState();
  }

  updateValidation() {
    setState(() {
      isLowercase = AppRegex.hasLowerCase(passwordController.text);
      isUppercase = AppRegex.hasUpperCase(passwordController.text);
      isNumber = AppRegex.hasNumber(passwordController.text);
      isSpecialCharacter =
          AppRegex.hasSpecialCharacter(passwordController.text);
      isLength = AppRegex.hasMinLength(passwordController.text);
    });
  }

  @override
  void dispose() {
    passwordController.removeListener(updateValidation);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildValidationRow(S.of(context).validatePasswordLenght, isLength),
        _buildValidationRow(
            S.of(context).validatePasswordUppercase, isUppercase),
        _buildValidationRow(
            S.of(context).validatePasswordLowercase, isLowercase),
        _buildValidationRow(S.of(context).validatePasswordNumber, isNumber),
        _buildValidationRow(
            S.of(context).validatePasswordSpecialCharacter, isSpecialCharacter),
      ],
    );
  }

  _buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check : Icons.close,
          color: isValid ? Colors.green : Colors.red,
        ),
        Text(
          text,
          style: TextStyle(
            decoration:
                isValid ? TextDecoration.lineThrough : TextDecoration.none,
            decorationStyle: TextDecorationStyle.solid,
            color: isValid ? Colors.grey : Colors.grey,
            fontFamily: TextStylesHelper().getCurrentLanguageByContext(context),
          ),
        )
      ],
    );
  }
}
