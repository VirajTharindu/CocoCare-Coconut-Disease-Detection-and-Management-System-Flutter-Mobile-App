import 'package:coconut_disease_detection/features/personalization/viewmodels/user_viewmodel.dart';
import 'package:coconut_disease_detection/core/widgets/circular_image.dart';
import 'package:coconut_disease_detection/core/utils/constants/colors.dart';
import 'package:coconut_disease_detection/core/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CUserProfileTile extends StatelessWidget {
  const CUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = UserViewModel.instance;
    return ListTile(
      leading: const CCircularImage(
          image: CImages.user, width: 50, height: 50, padding: 0),
      title: Text(controller.user.value.fullName,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: CColors.white)),
      subtitle: Text(controller.user.value.email,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: CColors.white)),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.edit, color: CColors.white)),
    );
  }
}
