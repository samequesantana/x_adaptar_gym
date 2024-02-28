import '../../../core/app_export.dart';

/// This class is used in the [trainingcomponent_item_widget] screen.
class TrainingcomponentItemModel {
  TrainingcomponentItemModel({
    this.trainingImage,
    this.trainingText,
    this.id,
  }) {
    trainingImage = trainingImage ?? ImageConstant.imgRectangle6;
    trainingText = trainingText ?? "Learn the Basic of Training";
    id = id ?? "";
  }

  String? trainingImage;

  String? trainingText;

  String? id;
}
