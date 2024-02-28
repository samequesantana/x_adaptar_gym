import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.iconButton,
    this.text1,
    this.text2,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgVectorDeepOrange50;
    text1 = text1 ?? "Don’t miss your lowerbody workout ";
    text2 = text2 ?? "About 1 hours years ago";
    id = id ?? "";
  }

  String? iconButton;

  String? text1;

  String? text2;

  String? id;
}
