import '../../../core/app_export.dart';

/// This class is used in the [workoutcomponent_item_widget] screen.
class WorkoutcomponentItemModel {
  WorkoutcomponentItemModel({
    this.image,
    this.title,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle10;
    title = title ?? "Weightlifting Basic";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? id;
}
