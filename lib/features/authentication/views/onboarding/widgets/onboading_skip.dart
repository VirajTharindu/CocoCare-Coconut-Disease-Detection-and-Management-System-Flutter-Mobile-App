import 'package:coconut_disease_detection/features/authentication/viewmodels/onboarding_viewmodel.dart';
import 'package:coconut_disease_detection/core/utils/constants/sizes.dart';
import 'package:coconut_disease_detection/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: CDeviceUtils.getAppBarHeight(),
        right: CSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingViewModel.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
