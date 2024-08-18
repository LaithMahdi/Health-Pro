import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_image.dart';
import '../../../../widgets/vertical_spacer.dart';
import '../../../controller/authentification/sign_up_controller.dart';
import 'auth_button.dart';
import 'auth_input.dart';
import 'password_icon_tap.dart';

class SignUpViewBody extends GetView<SignUpController> {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthInput(
          hintText: "Name",
          prefixIcon: AppImage.user,
          controller: controller.name,
        ),
        const VerticalSpacer(1.5),
        AuthInput(
          hintText: "Email",
          prefixIcon: AppImage.mail,
          controller: controller.email,
        ),
        const VerticalSpacer(1.5),
        GetBuilder<SignUpController>(
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
        const VerticalSpacer(1.5),
        GetBuilder<SignUpController>(
          builder: (controller) => AuthInput(
            hintText: "Confirm Password",
            prefixIcon: AppImage.lock,
            controller: controller.passwordConfirm,
            obscureText: controller.obscureConfirmPassword,
            widget: PasswordIconTap(
              isObscure: controller.obscureConfirmPassword,
              onTap: () => controller.handleObscureConfirmPassword(),
            ),
          ),
        ),
        const VerticalSpacer(2),
        Row(
          children: [
            GetBuilder<SignUpController>(
              builder: (controller) => Checkbox(
                value: controller.isAgree,
                onChanged: (value) => controller.handleAgree(value!),
                checkColor: AppColor.white,
                activeColor: AppColor.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const HorizintalSpacer(1),
            Expanded(
              child: Text.rich(
                TextSpan(text: "I agree to the ", children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primary, fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: " and"),
                  TextSpan(
                    text: " Privacy Policy",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.primary, fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            )
          ],
        ),
        const VerticalSpacer(3),
        AuthButton(
          text: "Sign Up",
          onPressed: () => controller.onSignUp(),
        ),
      ],
    );
  }
}
