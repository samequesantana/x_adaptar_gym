import '../../../core/app_export.dart';

/// This class is used in the [workoutlist_item_widget] screen.
class WorkoutlistItemModel {
  WorkoutlistItemModel({
    this.image,
    this.text1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle6;
    text1 = text1 ?? "Weightlifting Basic";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? id;
}
