import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../widgets/vertical_spacer.dart';
import '../../../controller/authentification/sign_in_controller.dart';
import 'auth_button.dart';
import 'auth_input.dart';
import 'password_icon_tap.dart';

class SignInViewBody extends GetView<SignInController> {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthInput(
          hintText: "Email",
          prefixIcon: AppImage.mail,
          controller: controller.email,
        ),
        const VerticalSpacer(1.5),
        GetBuilder<SignInController>(
          builder: (controller) => AuthInput(
            hintText: "Password",
            prefixIcon: AppImage.lock,
            controller: controller.password,
            obscureText: controller.obscurePassword,
            widget: PasswordIconTap(
              isObscure: controller.obscurePassword,
              onTap: () => controller.handleObscurePassword(),
            ),
          ),
        ),
        const VerticalSpacer(3),
        AuthButton(
          text: "Sign In",
          onPressed: () => controller.onSignIn(),
        ),
      ],
    );
  }
}
