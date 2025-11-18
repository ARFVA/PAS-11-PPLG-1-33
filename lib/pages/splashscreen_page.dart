import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11_pplg_1_33/controllers/splashscreen_controller.dart';
import 'package:pas_mobile_11_pplg_1_33/widgets/custom_text.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

  final splashcontroller = Get.find<SplashscreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 129, 15), 

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const Icon(
              Icons.flash_on,
              size: 150,
              color: Colors.white,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "PAS MOBILE 33",
              weight: FontWeight.bold,
              size: 24,
              color: Colors.white,
            ),

            const SizedBox(height: 8),

            const CustomText(
              text: "Preparing your experience...",
              color: Colors.white70,
              size: 14,
            ),

            const SizedBox(height: 25),

            const CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
