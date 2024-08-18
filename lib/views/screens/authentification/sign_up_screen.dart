import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/app_color.dart';
import '../../../widgets/vertical_spacer.dart';
import '../../controller/authentification/sign_up_controller.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, size: 20),
        ),
        title: const Text("Registration"),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const VerticalSpacer(2),
          const SignUpViewBody(),
          const VerticalSpacer(2.5),
          Center(
            child: Text.rich(
              TextSpan(
                  text: "You already have an account ? ",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => controller.onSignIn(),
                  children: [
                    TextSpan(
                      text: "Sign in",
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
