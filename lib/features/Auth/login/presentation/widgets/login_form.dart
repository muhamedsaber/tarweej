
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarweej/core/common/widgets/app_text_button.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/features/Auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:tarweej/features/Auth/login/presentation/widgets/login_bloc_consumer.dart';
import 'package:tarweej/features/Auth/login/presentation/widgets/login_form_body.dart';
import 'package:tarweej/features/Auth/login/presentation/widgets/login_without_password.dart';
import 'package:tarweej/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          const LoginFormBody(),
          verticalSpace(20),
          LoginBlocConsumer(
            loginButton: AppTextButton(
                buttonText: S.of(context).login,
                splashColor:
                    context.theme.scaffoldBackgroundColor.withOpacity(0.1),
                onPressed: () {
                  if (context
                      .read<LoginCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<LoginCubit>().login();
                  }
                }),
          ),
          verticalSpace(20),
          const LoginWithoutPassword()
        ],
      ),
    );
  }
}
