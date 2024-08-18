import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import '../../../widgets/vertical_spacer.dart';
import '../../controller/authentification/welcome_auth_controller.dart';
import 'widgets/auth_button.dart';

class WelcomeAuthScreen extends StatelessWidget {
  const WelcomeAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeAuthController controller = Get.put(WelcomeAuthController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalSpacer(4),
            Center(
              child: SvgPicture.asset(AppImage.logo, width: 100, height: 100),
            ),
            const VerticalSpacer(1),
            Text.rich(
              TextSpan(
                text: "Health",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: AppColor.primary),
                children: [
                  TextSpan(
                    text: "Pro",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.primary.withOpacity(0.5),
                        ),
                  )
                ],
              ),
            ),
            const VerticalSpacer(7),
            Text(
              "Let's get started",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const VerticalSpacer(1),
            Text(
              "Login in to enjoy the featureswe've\nprovided and be well!",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColor.darkGrey),
            ),
            const VerticalSpacer(6),
            AuthButton(text: "Authorize", onPressed: controller.onAuthorize),
            const VerticalSpacer(1.5),
            AuthButton(
              text: "Sign up",
              onPressed: controller.onSignUp,
              isSecond: true,
            ),
          ],
        ),
      ),
    );
  }
}
