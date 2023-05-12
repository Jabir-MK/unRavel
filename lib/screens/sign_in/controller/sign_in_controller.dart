import 'package:flutter/material.dart';

class SignInController with ChangeNotifier {
  //
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
    notifyListeners();
  }
}
