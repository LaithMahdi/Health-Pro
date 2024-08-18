import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/app_route.dart';

class SignUpController extends GetxController {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordConfirm = TextEditingController();
  bool _isAgree = false;
  bool _obscurePassword = false;
  bool _obscureConfirmPassword = false;

  // Getter
  TextEditingController get email => _email;
  TextEditingController get name => _name;
  TextEditingController get password => _password;
  TextEditingController get passwordConfirm => _passwordConfirm;
  bool get isAgree => _isAgree;
  bool get obscurePassword => _obscurePassword;
  bool get obscureConfirmPassword => _obscureConfirmPassword;

  void onSignUp() {}

  void onSignIn() => Get.toNamed(AppRoute.signIn);

  void handleAgree(bool value) {
    _isAgree = value;
    update();
  }

  void handleObscurePassword() {
    _obscurePassword = _obscurePassword ? false : true;
    update();
  }

  void handleObscureConfirmPassword() {
    _obscureConfirmPassword = _obscureConfirmPassword ? false : true;
    update();
  }

  @override
  void onClose() {
    _email.dispose();
    _name.dispose();
    password.dispose();
    passwordConfirm.dispose();
    super.onClose();
  }
}
