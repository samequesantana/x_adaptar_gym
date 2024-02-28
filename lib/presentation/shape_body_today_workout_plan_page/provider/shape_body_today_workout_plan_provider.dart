import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/shape_body_today_workout_plan_model.dart';
import '../models/weightliftingbasic_item_model.dart';

/// A provider class for the ShapeBodyTodayWorkoutPlanPage.
///
/// This provider manages the state of the ShapeBodyTodayWorkoutPlanPage, including the
/// current shapeBodyTodayWorkoutPlanModelObj

// ignore_for_file: must_be_immutable
class ShapeBodyTodayWorkoutPlanProvider extends ChangeNotifier {
  ShapeBodyTodayWorkoutPlanModel shapeBodyTodayWorkoutPlanModelObj =
      ShapeBodyTodayWorkoutPlanModel();

  @override
  void dispose() {
    super.dispose();
  }
}
