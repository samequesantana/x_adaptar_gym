import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/register_info_height_model.dart';

/// A provider class for the RegisterInfoHeightScreen.
///
/// This provider manages the state of the RegisterInfoHeightScreen, including the
/// current registerInfoHeightModelObj

// ignore_for_file: must_be_immutable
class RegisterInfoHeightProvider extends ChangeNotifier {
  RegisterInfoHeightModel registerInfoHeightModelObj =
      RegisterInfoHeightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
