import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/workout_progres_mounthly_model.dart';

/// A provider class for the WorkoutProgresMounthlyScreen.
///
/// This provider manages the state of the WorkoutProgresMounthlyScreen, including the
/// current workoutProgresMounthlyModelObj

// ignore_for_file: must_be_immutable
class WorkoutProgresMounthlyProvider extends ChangeNotifier {
  WorkoutProgresMounthlyModel workoutProgresMounthlyModelObj =
      WorkoutProgresMounthlyModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in workoutProgresMounthlyModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
