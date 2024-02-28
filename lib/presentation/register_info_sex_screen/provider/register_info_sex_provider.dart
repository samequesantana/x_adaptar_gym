import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_info_sex_model.dart';

/// A provider class for the RegisterInfoSexScreen.
///
/// This provider manages the state of the RegisterInfoSexScreen, including the
/// current registerInfoSexModelObj

// ignore_for_file: must_be_immutable
class RegisterInfoSexProvider extends ChangeNotifier {
  RegisterInfoSexModel registerInfoSexModelObj = RegisterInfoSexModel();

  @override
  void dispose() {
    super.dispose();
  }
}
