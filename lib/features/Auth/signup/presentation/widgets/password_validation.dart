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
    // Rather Than Using Constructor injection, use context.read to
    // access The current passwordController of the SignupCubit
    passwordController = context.read<SignupCubit>().passwordController;

    // Add a listener to the password controller to update the validation
    passwordController.addListener(updateValidation);
    super.initState();
  }

  // Keeps Updating the validation of the password by The AppRegex class
  // if The Password is in valid format or not it will change The state of the validation

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

  // Dispose the password controller
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

  // Builds a validation row with an icon and text. If validation is correct,
  // text is struck through and icon is green; otherwise, icon is red.
  _buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check : Icons.close,
          color: isValid ? Colors.green : Colors.red,
        ),
        Text(
          text,

          /// After Facing an Issue with the font family, I couldn'g refactor This
          /// Style on [AppTextStyles] because making changes on The TextStyles
          /// by using .copyWith() method will be rediculous 😂
          /// So I decided to keep it here, Its bad practice but I'll chabnge it in The future
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
