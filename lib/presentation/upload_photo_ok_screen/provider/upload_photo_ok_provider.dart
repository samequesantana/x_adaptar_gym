import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/upload_photo_ok_model.dart';

/// A provider class for the UploadPhotoOkScreen.
///
/// This provider manages the state of the UploadPhotoOkScreen, including the
/// current uploadPhotoOkModelObj

// ignore_for_file: must_be_immutable
class UploadPhotoOkProvider extends ChangeNotifier {
  UploadPhotoOkModel uploadPhotoOkModelObj = UploadPhotoOkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
