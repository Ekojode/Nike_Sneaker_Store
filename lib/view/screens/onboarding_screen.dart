import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utilities/colors.dart';
import '../../utilities/dimensions.dart';
import '../../utilities/navigation.dart';
import '../../utilities/text_style.dart';
import '../widgets/app_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.secondaryBlue,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _pageController,
            children: [
              Center(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    height: AppDimension.height(context) * 0.15,
                    width: AppDimension.width(context),
                    child: const Text('data'),
                  ),
                  SizedBox(
                    width: AppDimension.width(context) * 0.5,
                    child: Text(
                      'WELCOME TO NIKE',
                      textAlign: TextAlign.center,
                      style: AppTextScheme.primaryMidHeaderRalewayFont
                          .copyWith(color: AppColorScheme.white),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: AppDimension.width(context),
                        child: Image.asset(
                          'assets/onboarding/onboarding_1.png',
                          color: AppColorScheme.orange,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              SizedBox(
                  width: AppDimension.width(context),
                  child: const Center(child: Text('Agabvi 2'))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text('Agabvi 3')),
                  LongButton(
                      text: 'Action',
                      onPressed: () {
                        context.pushNamed(AppRouter.login);
                      },
                      textColor: AppColorScheme.primaryBlue,
                      buttonColor: AppColorScheme.white),
                  const ShortButton(
                      textColor: AppColorScheme.orange,
                      buttonColor: AppColorScheme.yellow)
                ],
              ),
            ],
          ),
          Positioned(
            top: AppDimension.height(context) * 0.8,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const SlideEffect(
                spacing: 10,
                dotColor: AppColorScheme.yellow,
                activeDotColor: AppColorScheme.white,
                dotWidth: 42,
                dotHeight: 6,
                radius: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
