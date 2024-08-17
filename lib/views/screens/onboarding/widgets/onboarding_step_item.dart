import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_size.dart';

class OnboardingStepItem extends StatelessWidget {
  const OnboardingStepItem({
    super.key,
    required this.index,
    required this.currentIndex,
  });

  final int index, currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: index == currentIndex
          ? AppSize.screenWidth! * .4
          : AppSize.screenWidth! * .2,
      height: 10,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: index == currentIndex ? AppColor.primary : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
