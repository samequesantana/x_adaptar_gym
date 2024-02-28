import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/weightlifting_start_model.dart';

/// A provider class for the WeightliftingStartScreen.
///
/// This provider manages the state of the WeightliftingStartScreen, including the
/// current weightliftingStartModelObj

// ignore_for_file: must_be_immutable
class WeightliftingStartProvider extends ChangeNotifier {
  WeightliftingStartModel weightliftingStartModelObj =
      WeightliftingStartModel();

  @override
  void dispose() {
    super.dispose();
  }
}
