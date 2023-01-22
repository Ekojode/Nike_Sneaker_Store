import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/dimensions.dart';
import '../../../utilities/navigation.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../../widgets/headline_text.dart';
import '../../widgets/sub_headline_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                  text: 'Forgot Password', color: AppColorScheme.darkAsh),
              const SizedBox(height: 8),
              const SubHeadlineText(
                text: 'Enter your Email account to reset your password',
                color: AppColorScheme.secondaryAsh,
              ),
              const SizedBox(height: 20),
              const AppTextField(
                  header: '', hint: 'xyz@gmail.com', isObscurable: false),
              const SizedBox(height: 30),
              LongButton(
                  textColor: AppColorScheme.white,
                  buttonColor: AppColorScheme.primaryBlue,
                  text: 'Reset Password',
                  onPressed: () => context.pushNamed(AppRouter.otp)),
            ],
          ),
        ),
      ),
    );
  }
}
