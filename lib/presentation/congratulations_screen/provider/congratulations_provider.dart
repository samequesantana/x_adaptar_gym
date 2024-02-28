import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/congratulations_model.dart';

/// A provider class for the CongratulationsScreen.
///
/// This provider manages the state of the CongratulationsScreen, including the
/// current congratulationsModelObj

// ignore_for_file: must_be_immutable
class CongratulationsProvider extends ChangeNotifier {
  CongratulationsModel congratulationsModelObj = CongratulationsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
