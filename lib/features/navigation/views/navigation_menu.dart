import 'package:coconut_disease_detection/features/disease_detection/views/disease_detect/disease_detect.dart';
import 'package:coconut_disease_detection/features/disease_detection/views/disease_list/disease_list.dart';
import 'package:coconut_disease_detection/features/disease_detection/views/diseases/stem_bleeding.dart';
import 'package:coconut_disease_detection/features/home/views/home.dart';
import 'package:coconut_disease_detection/features/result/views/result.dart';
import 'package:coconut_disease_detection/features/tracking/views/tracking_report/tracking_report.dart';
import 'package:coconut_disease_detection/features/personalization/views/profile.dart';
import 'package:coconut_disease_detection/core/utils/constants/colors.dart';
import 'package:coconut_disease_detection/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationViewModel());
    final darkMode = CHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? CColors.black : CColors.white,
          shadowColor: CColors.grey.withOpacity(0.7),
          //ndicatorColor: darkMode ? CColors.white.withOpacity(0.1) : CColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.additem), label: 'Add'),
            NavigationDestination(
                icon: Icon(Iconsax.information), label: 'Support'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationViewModel extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const DiseaseDetect(),
    const Result(),
    const DiseaseList(),
    const ProfileScreen(),
  ];
}
