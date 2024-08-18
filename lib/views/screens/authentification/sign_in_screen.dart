import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/app_color.dart';
import '../../../widgets/vertical_spacer.dart';
import '../../controller/authentification/sign_in_controller.dart';
import 'widgets/sign_in_view_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, size: 20),
        ),
        title: const Text("Sign In"),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const VerticalSpacer(2),
          const SignInViewBody(),
          const VerticalSpacer(2.5),
          Center(
            child: Text.rich(
              TextSpan(
                  text: "You don't have an account ? ",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => controller.onSignUp(),
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColor.primary, fontWeight: FontWeight.w600),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
