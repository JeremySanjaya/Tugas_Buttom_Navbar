import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var errorMessage = ''.obs;

  void validateLogin() {
    if (usernameController.text == 'Jeremy' && passwordController.text == 'Jeremy') {
      Get.toNamed('/homepage');
    } else {
      errorMessage.value = "Username atau Password Anda Salah";
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
