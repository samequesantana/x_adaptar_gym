import '../../../core/app_export.dart';

/// This class is used in the [weightliftingbasic_item_widget] screen.
class WeightliftingbasicItemModel {
  WeightliftingbasicItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle6;
    text = text ?? "Weightlifting Basic";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? id;
}
