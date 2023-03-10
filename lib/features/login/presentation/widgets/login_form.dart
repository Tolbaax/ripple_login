import 'package:flutter/material.dart';
import 'package:ripple_logiin/core/utils/media_query_values.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_input_field.dart';
import '../../../../core/widgets/divider.dart';
import '../../../../core/widgets/social_signup.dart';
import '../cubit/login_cubit.dart';
import 'dont_have_account.dart';
import 'fade_slide_transition.dart';
import 'forget_pass_button.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    final height = context.height - context.toPadding;
    final space = height > 650 ? 2.0.h : 1.0.h;
    final LoginCubit cubit = LoginCubit.get(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.sp),
      child: Column(
        children: [
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: const CustomInputField(
              hintText: AppStrings.email,
              textInputAction: TextInputAction.next,
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomInputField(
              hintText: AppStrings.password,
              prefixIcon: Icons.lock,
              suffixIcon: cubit.suffix,
              obscureText: cubit.isPassword,
              keyboardType: TextInputType.visiblePassword,
              suffixTab: () {
                cubit.changeVisibility();
              },
            ),
          ),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: const ForgetPasswordButton(),
          ),
          SizedBox(height: 6.55.h),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: CustomButton(
              onTap: () {
                //Navigator.pushNamed(context, Routes.layout);
              },
              text: AppStrings.login,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 2.5.h),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: const DividerLine(),
          ),
          SizedBox(height: 1.5.h),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 5 * space,
            child: const SocialSignUp(),
          ),
          SizedBox(height: 1.5.h),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 6 * space,
            child: const DonTHaveAccount(),
          ),
        ],
      ),
    );
  }
}
