import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/workout_progres_weekey_model.dart';

/// A provider class for the WorkoutProgresWeekeyScreen.
///
/// This provider manages the state of the WorkoutProgresWeekeyScreen, including the
/// current workoutProgresWeekeyModelObj

// ignore_for_file: must_be_immutable
class WorkoutProgresWeekeyProvider extends ChangeNotifier {
  WorkoutProgresWeekeyModel workoutProgresWeekeyModelObj =
      WorkoutProgresWeekeyModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in workoutProgresWeekeyModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
