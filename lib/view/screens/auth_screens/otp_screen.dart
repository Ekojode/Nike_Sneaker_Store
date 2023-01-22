import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/dimensions.dart';
import '../../../utilities/navigation.dart';
import '../../widgets/app_button.dart';
import '../../widgets/headline_text.dart';
import '../../widgets/otp_field.dart';
import '../../widgets/sub_headline_text.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  text: 'OTP Verification', color: AppColorScheme.darkAsh),
              const SizedBox(height: 8),
              const SubHeadlineText(
                text: 'Please check your email to see the verification code',
                color: AppColorScheme.secondaryAsh,
              ),
              const SizedBox(height: 20),
              const OTPField(),
              const SizedBox(height: 30),
              LongButton(
                  textColor: AppColorScheme.white,
                  buttonColor: AppColorScheme.primaryBlue,
                  text: 'Verify',
                  onPressed: () => context.goNamed(AppRouter.login)),
            ],
          ),
        ),
      ),
    );
  }
}
