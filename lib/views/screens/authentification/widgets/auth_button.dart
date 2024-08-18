import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_size.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    this.isSecond,
    required this.onPressed,
  });

  final String text;
  final bool? isSecond;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.screenWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isSecond == null || isSecond == false ? AppColor.primary : null,
          foregroundColor: isSecond == null || isSecond == false
              ? AppColor.white
              : AppColor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: isSecond == null || isSecond == false
                ? BorderSide.none
                : const BorderSide(color: AppColor.primary),
          ),
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
          textStyle: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        child: Text(text),
      ),
    );
  }
}
