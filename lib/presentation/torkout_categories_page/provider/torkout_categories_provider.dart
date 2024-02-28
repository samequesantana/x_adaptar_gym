import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/torkout_categories_model.dart';
import '../models/workoutcomponent_item_model.dart';

/// A provider class for the TorkoutCategoriesPage.
///
/// This provider manages the state of the TorkoutCategoriesPage, including the
/// current torkoutCategoriesModelObj

// ignore_for_file: must_be_immutable
class TorkoutCategoriesProvider extends ChangeNotifier {
  TorkoutCategoriesModel torkoutCategoriesModelObj = TorkoutCategoriesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
