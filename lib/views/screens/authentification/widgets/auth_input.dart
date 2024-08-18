import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../core/constant/app_color.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.obscureText,
    this.keyboardType,
    this.widget,
  });

  final String hintText, prefixIcon;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? widget;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.darkGrey.withOpacity(0.2),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10, left: 20),
          child: SvgPicture.asset(prefixIcon, color: AppColor.primary),
        ),
        suffixIcon: widget ?? const SizedBox(),
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColor.black.withOpacity(0.3)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
