import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/workout_progres_annual_model.dart';

/// A provider class for the WorkoutProgresAnnualScreen.
///
/// This provider manages the state of the WorkoutProgresAnnualScreen, including the
/// current workoutProgresAnnualModelObj

// ignore_for_file: must_be_immutable
class WorkoutProgresAnnualProvider extends ChangeNotifier {
  WorkoutProgresAnnualModel workoutProgresAnnualModelObj =
      WorkoutProgresAnnualModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in workoutProgresAnnualModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
