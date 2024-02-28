import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_info_age_model.dart';

/// A provider class for the RegisterInfoAgeScreen.
///
/// This provider manages the state of the RegisterInfoAgeScreen, including the
/// current registerInfoAgeModelObj

// ignore_for_file: must_be_immutable
class RegisterInfoAgeProvider extends ChangeNotifier {
  RegisterInfoAgeModel registerInfoAgeModelObj = RegisterInfoAgeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
