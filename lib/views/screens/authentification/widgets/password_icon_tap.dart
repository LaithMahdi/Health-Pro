import 'package:flutter/material.dart';

class PasswordIconTap extends StatelessWidget {
  const PasswordIconTap({
    super.key,
    required this.isObscure,
    required this.onTap,
  });

  final bool isObscure;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
      ),
    );
  }
}
