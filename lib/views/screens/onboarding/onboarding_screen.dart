import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_size.dart';
import '../../../data/datasource/onboarding_list.dart';
import '../../controller/onboarding/onboarding_controller.dart';
import 'widgets/onboarding_item.dart';
import 'widgets/onboarding_step_item.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: AppColor.lightGrey,
      body: Stack(
        children: [
          PageView.builder(
            controller: onboardingController.pageController,
            onPageChanged: onboardingController.updateCurrentIndex,
            itemCount: onboardingList.length,
            itemBuilder: (context, index) =>
                OnboardingItem(onboarding: onboardingList[index]),
          ),
          Positioned(
              top: AppSize.screenHeight! * .05,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingList.length,
                  (index) => GetBuilder<OnboardingController>(
                    builder: (controller) => OnboardingStepItem(
                        index: index, currentIndex: controller.currentIndex),
                  ),
                ),
              )),
          GetBuilder<OnboardingController>(
            builder: (controller) => controller.isLastPage()
                ? const SizedBox()
                : Positioned(
                    bottom: 20,
                    left: 20,
                    child: TextButton(
                      onPressed: onboardingController.skipOnboarding,
                      style: TextButton.styleFrom(
                        foregroundColor: AppColor.primary,
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      child: const Text("Skip"),
                    ),
                  ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: IconButton(
              onPressed: onboardingController.nextPage,
              style: IconButton.styleFrom(
                backgroundColor: AppColor.primary,
                foregroundColor: AppColor.white,
                padding: const EdgeInsets.all(20),
              ),
              icon: const Icon(Icons.arrow_forward_ios, size: 18),
            ),
          )
        ],
      ),
    );
  }
}
