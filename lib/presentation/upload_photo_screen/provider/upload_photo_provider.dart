import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/upload_photo_model.dart';

/// A provider class for the UploadPhotoScreen.
///
/// This provider manages the state of the UploadPhotoScreen, including the
/// current uploadPhotoModelObj
class UploadPhotoProvider extends ChangeNotifier {
  UploadPhotoModel uploadPhotoModelObj = UploadPhotoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
