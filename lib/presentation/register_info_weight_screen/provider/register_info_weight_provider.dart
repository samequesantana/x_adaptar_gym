import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_info_weight_model.dart';

/// A provider class for the RegisterInfoWeightScreen.
///
/// This provider manages the state of the RegisterInfoWeightScreen, including the
/// current registerInfoWeightModelObj
class RegisterInfoWeightProvider extends ChangeNotifier {
  RegisterInfoWeightModel registerInfoWeightModelObj =
      RegisterInfoWeightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
