import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/core/di/dependency_injection.dart';
import 'package:tarweej/core/extensions/app_extensions.dart';
import 'package:tarweej/core/helpers/spacing.dart';
import 'package:tarweej/core/styles/app_text_styles.dart';
import 'package:tarweej/features/Auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:tarweej/features/Auth/login/presentation/widgets/login_form.dart';
import 'package:tarweej/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: context.theme.scaffoldBackgroundColor,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                verticalSpace(100),
                Text(
                  S.of(context).login,
                  style: AppTextStyles.font30OnSurfaceExtraBold(context),
                ),
                verticalSpace(20),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
