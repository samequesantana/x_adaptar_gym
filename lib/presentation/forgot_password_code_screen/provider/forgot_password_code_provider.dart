import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_code_model.dart';

/// A provider class for the ForgotPasswordCodeScreen.
///
/// This provider manages the state of the ForgotPasswordCodeScreen, including the
/// current forgotPasswordCodeModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordCodeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  ForgotPasswordCodeModel forgotPasswordCodeModelObj =
      ForgotPasswordCodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
