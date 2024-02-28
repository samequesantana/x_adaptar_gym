import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_change_model.dart';

/// A provider class for the ForgotPasswordChangeScreen.
///
/// This provider manages the state of the ForgotPasswordChangeScreen, including the
/// current forgotPasswordChangeModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordChangeProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  ForgotPasswordChangeModel forgotPasswordChangeModelObj =
      ForgotPasswordChangeModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
