import 'package:coconut_disease_detection/core/widgets/appbar/custom_appbar.dart';
import 'package:coconut_disease_detection/core/custom_shapes/containers/circular_containers.dart';
import 'package:coconut_disease_detection/core/custom_shapes/containers/primary_header_container.dart';
import 'package:coconut_disease_detection/core/custom_shapes/curved_edges/curved_edges.dart';
import 'package:coconut_disease_detection/core/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:coconut_disease_detection/core/widgets/notification/notification.dart';
import 'package:coconut_disease_detection/features/home/views/home_appbar.dart';
import 'package:coconut_disease_detection/core/utils/constants/colors.dart';
import 'package:coconut_disease_detection/core/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeaderContainer(
                child: Column(
              children: const [
                CHomeAppBar(),
              ],
            )),
            const Text('hi')
          ],
        ),
      ),
    );
  }
}
