import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_login_model.dart';

/// A provider class for the RegisterLoginScreen.
///
/// This provider manages the state of the RegisterLoginScreen, including the
/// current registerLoginModelObj

// ignore_for_file: must_be_immutable
class RegisterLoginProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  RegisterLoginModel registerLoginModelObj = RegisterLoginModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
