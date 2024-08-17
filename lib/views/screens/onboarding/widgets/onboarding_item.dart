import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_size.dart';
import '../../../../data/model/onboarding_model.dart';
import '../../../../widgets/vertical_spacer.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onboarding});

  final OnboardingModel onboarding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(onboarding.image, fit: BoxFit.contain),
        ),
        Positioned(
          bottom: AppSize.screenHeight! * .15,
          right: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                onboarding.title,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const VerticalSpacer(1),
              Text(
                onboarding.description,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColor.darkGrey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
