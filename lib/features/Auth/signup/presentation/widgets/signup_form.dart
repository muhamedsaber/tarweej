import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/common/widgets/app_text_button.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/signup/presentation/signup_cubit/signup_cubit.dart';
import 'package:tarweej/features/Auth/signup/presentation/widgets/signup_form_body.dart';
import 'package:tarweej/generated/l10n.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Expanded(
        child: ListView(
          children: [
            const SignupFormBody(),
            verticalSpace(20),
            AppTextButton(
              buttonText: S.of(context).createAccount,
              onPressed: () {
                signup();
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }

  signup() {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      log("do something here");
    }
  }
}
