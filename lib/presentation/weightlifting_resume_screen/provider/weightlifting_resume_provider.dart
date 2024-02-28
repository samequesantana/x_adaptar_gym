import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/weightlifting_resume_model.dart';

/// A provider class for the WeightliftingResumeScreen.
///
/// This provider manages the state of the WeightliftingResumeScreen, including the
/// current weightliftingResumeModelObj

// ignore_for_file: must_be_immutable
class WeightliftingResumeProvider extends ChangeNotifier {
  WeightliftingResumeModel weightliftingResumeModelObj =
      WeightliftingResumeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
