import 'package:flutter/material.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';
import 'package:tarweej/generated/l10n.dart';

class CreateYourAccountHeadline extends StatelessWidget {
  const CreateYourAccountHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle headlineStyle =
        AppTextStyles.font30OnSurfaceMedium(context);
    final TextStyle regularStyle =
        AppTextStyles.font20OnSurfaceRegular(context);

    return Align(
      alignment: Localizations.localeOf(context).languageCode == 'ar'
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(S.of(context).hello, style: headlineStyle),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: S.of(context).create,
                    style: AppTextStyles.font20OnSurfaceRegular(context)),
                TextSpan(
                    text: S.of(context).yourAccount,
                    style: AppTextStyles.font20OnSurfaceMedium(context)
                        .copyWith(fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Text(S.of(context).toContinue, style: regularStyle),
        ],
      ),
    );
  }
}
