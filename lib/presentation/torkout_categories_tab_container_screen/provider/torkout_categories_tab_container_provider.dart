import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/torkout_categories_tab_container_model.dart';

/// A provider class for the TorkoutCategoriesTabContainerScreen.
///
/// This provider manages the state of the TorkoutCategoriesTabContainerScreen, including the
/// current torkoutCategoriesTabContainerModelObj
class TorkoutCategoriesTabContainerProvider extends ChangeNotifier {
  TorkoutCategoriesTabContainerModel torkoutCategoriesTabContainerModelObj =
      TorkoutCategoriesTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
