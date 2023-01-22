import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/dimensions.dart';
import '../../../utilities/navigation.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/headline_text.dart';
import '../../widgets/sub_headline_text.dart';
import '../../widgets/switch_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  text: 'Register Acccount', color: AppColorScheme.darkAsh),
              const SizedBox(height: 8),
              const SubHeadlineText(
                text: 'Fill your details or continue with social media',
                color: AppColorScheme.secondaryAsh,
              ),
              const SizedBox(height: 30),
              const AppTextField(
                header: 'Your name',
                hint: 'Oma-Victor Ekojode',
                isObscurable: false,
              ),
              const SizedBox(height: 20),
              const AppTextField(
                header: 'Email Address',
                hint: 'xyz@gmail.com',
                isObscurable: false,
              ),
              const SizedBox(height: 20),
              const AppTextField(
                  header: 'Password', hint: '******', isObscurable: true),
              const SizedBox(height: 24),
              LongButton(
                  textColor: AppColorScheme.white,
                  buttonColor: AppColorScheme.primaryBlue,
                  text: 'Sign Up',
                  onPressed: () {}),
              const SizedBox(height: 112),
              SwitchText(
                  preText: 'Already Have Account?',
                  actionText: 'Log In',
                  onPressed: () => context.goNamed(AppRouter.login))
            ],
          ),
        ),
      ),
    );
  }
}
