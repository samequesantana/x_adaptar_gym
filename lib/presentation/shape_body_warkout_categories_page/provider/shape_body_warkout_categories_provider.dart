import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/shape_body_warkout_categories_model.dart';
import '../models/workoutlist_item_model.dart';
import '../models/trainingcomponent_item_model.dart';

/// A provider class for the ShapeBodyWarkoutCategoriesPage.
///
/// This provider manages the state of the ShapeBodyWarkoutCategoriesPage, including the
/// current shapeBodyWarkoutCategoriesModelObj

// ignore_for_file: must_be_immutable
class ShapeBodyWarkoutCategoriesProvider extends ChangeNotifier {
  ShapeBodyWarkoutCategoriesModel shapeBodyWarkoutCategoriesModelObj =
      ShapeBodyWarkoutCategoriesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
