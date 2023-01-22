import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/dimensions.dart';
import '../../../utilities/navigation.dart';
import '../../../utilities/text_style.dart';
import '../../widgets/action_text_button.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/headline_text.dart';
import '../../widgets/sub_headline_text.dart';
import '../../widgets/switch_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColorScheme.white,
        foregroundColor: AppColorScheme.darkAsh,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimension.padding(context),
          child: Column(
            children: [
              const HeadLineText(
                  text: 'Hello Again!', color: AppColorScheme.darkAsh),
              const SizedBox(height: 8),
              const SubHeadlineText(
                text: 'Fill your details or continue with social media',
                color: AppColorScheme.secondaryAsh,
              ),
              const SizedBox(height: 30),
              const AppTextField(
                header: 'Email Address',
                hint: 'xyz@gmail.com',
                isObscurable: false,
              ),
              const SizedBox(height: 30),
              const AppTextField(
                  header: 'Password', hint: '******', isObscurable: true),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: ActionTextButton(
                    text: 'Recovery Password',
                    onPressed: () =>
                        context.pushNamed(AppRouter.forgotPassword),
                    textStyle: AppTextScheme.secondaryParagraphPoppins
                        .copyWith(color: AppColorScheme.secondaryAsh)),
              ),
              const SizedBox(height: 24),
              LongButton(
                  textColor: AppColorScheme.white,
                  buttonColor: AppColorScheme.primaryBlue,
                  text: 'Sign In',
                  onPressed: () {}),
              const SizedBox(height: 150),
              SwitchText(
                  preText: 'New User?',
                  actionText: 'Create Account',
                  onPressed: () => context.goNamed(AppRouter.signUp))
            ],
          ),
        ),
      ),
    );
  }
}
