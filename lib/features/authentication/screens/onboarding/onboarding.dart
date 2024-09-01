import 'package:demo/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:demo/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:demo/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:demo/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:demo/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:demo/utils/constants/image_strings.dart';
import 'package:demo/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// onboarding controller to handle logic
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingSubTitle1,
                subTitle: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingSubTitle2,
                subTitle: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingSubTitle3,
                subTitle: TImages.onBoardingImage3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          /// dot navigation smoothpageindicator
          const OnBoardingDotNavigation(),

          /// circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


