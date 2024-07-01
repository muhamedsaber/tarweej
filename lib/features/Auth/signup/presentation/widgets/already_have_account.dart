import 'package:flutter/material.dart';
import 'package:tarweej/config/router/routes.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';
import 'package:tarweej/generated/l10n.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).alreadyHaveAccount,
          style: AppTextStyles.font14OnSurfaceMedium(context),
        ),
        horizontalSpace(5),
        TextButton(
          onPressed: () {
            context.navigateTo(Routes.loginView);
          },
          child: Text(
            S.of(context).login,
            style: AppTextStyles.font16OnSurfaceMedium(context).copyWith(
              color: context.theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
