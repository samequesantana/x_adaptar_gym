import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj

// ignore_for_file: must_be_immutable
class LoginProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  LoginModel loginModelObj = LoginModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
