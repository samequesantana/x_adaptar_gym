import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/shape_body_today_workout_plan_tab_container_model.dart';
import '../models/trainingcomponent1_item_model.dart';

/// A provider class for the ShapeBodyTodayWorkoutPlanTabContainerScreen.
///
/// This provider manages the state of the ShapeBodyTodayWorkoutPlanTabContainerScreen, including the
/// current shapeBodyTodayWorkoutPlanTabContainerModelObj
class ShapeBodyTodayWorkoutPlanTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ShapeBodyTodayWorkoutPlanTabContainerModel
      shapeBodyTodayWorkoutPlanTabContainerModelObj =
      ShapeBodyTodayWorkoutPlanTabContainerModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
