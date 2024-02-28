import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/workout_schedule_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

/// A provider class for the WorkoutScheduleScreen.
///
/// This provider manages the state of the WorkoutScheduleScreen, including the
/// current workoutScheduleModelObj

// ignore_for_file: must_be_immutable
class WorkoutScheduleProvider extends ChangeNotifier {
  WorkoutScheduleModel workoutScheduleModelObj = WorkoutScheduleModel();

  DateTime? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
