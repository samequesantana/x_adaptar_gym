import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.heightText,
    this.heightLabel,
    this.id,
  }) {
    heightText = heightText ?? "180cm";
    heightLabel = heightLabel ?? "Height";
    id = id ?? "";
  }

  String? heightText;

  String? heightLabel;

  String? id;
}
