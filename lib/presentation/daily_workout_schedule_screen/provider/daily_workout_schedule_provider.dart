import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/daily_workout_schedule_model.dart';

/// A provider class for the DailyWorkoutScheduleScreen.
///
/// This provider manages the state of the DailyWorkoutScheduleScreen, including the
/// current dailyWorkoutScheduleModelObj

// ignore_for_file: must_be_immutable
class DailyWorkoutScheduleProvider extends ChangeNotifier {
  DailyWorkoutScheduleModel dailyWorkoutScheduleModelObj =
      DailyWorkoutScheduleModel();

  @override
  void dispose() {
    super.dispose();
  }
}
