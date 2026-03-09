import 'package:coconut_disease_detection/features/authentication/viewmodels/onboarding_viewmodel.dart';
import 'package:coconut_disease_detection/core/utils/constants/colors.dart';
import 'package:coconut_disease_detection/core/utils/constants/sizes.dart';
import 'package:coconut_disease_detection/core/utils/device/device_utility.dart';
import 'package:coconut_disease_detection/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingdotNavigation extends StatelessWidget {
  const OnboardingdotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingViewModel.instance;

    final dark = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationBarHeight() + 25.0,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? CColors.light : CColors.dark, dotHeight: 6),
      ),
    );
  }
}
